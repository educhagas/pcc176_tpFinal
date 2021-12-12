//
// Created by eduar on 02/12/2021.
//
#include <pareto/front.h>
#include <pareto/matplot/front.h>
#include "portfolio/portfolio.h"
#include "portfolio/market_data.h"
#include "portfolio/VNS.h"
#include "portfolio/SA.h"
#include "portfolio/descida.h"

int main(int argc, char *argv[]) {
//    std::vector<std::string> arguments(argv + 1,argv + argc);
//    std::string inputFileName = arguments[0];
//    int k;
//    float alpha;
//    for(unsigned int i = 2; i < arguments.size();i+=2){
//        if(arguments[i] == "--K_PARAM"){
//            k = std::atoi(arguments[i+1].c_str());
//        }else if(arguments[i] == "--ALPHA_SA"){
//            alpha = std::atof(arguments[i+1].c_str());
//        }
//    }
    int k = 9;
    float alpha = 0.96;
    std::vector<std::string> fileNames = {"data/port5.txt", "data/port4.txt", "data/port3.txt",
                                          "data/port2.txt"};
    //std::string inputFileName = "data/port2.txt";


    float lambda_value = 0.0;
    float lambda_step = 0.02;
    pareto::front<double, 2, portfolio::portfolio> pareto_front;
    pareto_front = pareto::front<double, 2, portfolio::portfolio>({pareto::min, pareto::max});
    //std::shared_ptr<portfolio::market_data> md(new portfolio::market_data("data/port5.txt"));
    //std::shared_ptr<portfolio::market_data> md(new portfolio::market_data(inputFileName));
    std::vector<double> values;
    std::vector<std::chrono::duration<double>> times;
    for (std::string inputFileName: fileNames) {
        std::cout << inputFileName << std::endl;
        std::shared_ptr<portfolio::market_data> md(new portfolio::market_data(inputFileName));
        std::ofstream fout_points(inputFileName + "_points.txt");
        std::ofstream fout_pareto(inputFileName + "_pareto.txt");
        values.clear();
        times.clear();
        for (int i = 5; i < 10; ++i) {
            lambda_value = 0.0;
            fout_points << i << "\n";
            auto start = std::chrono::system_clock::now();
            pareto_front.clear();

            while (lambda_value <= 1.0) {
                portfolio::portfolio port(md);
                port.evaluate_risk_return();
                //portfolio::VNS(port,0.0,100,3);
                //float temp_inicial = portfolio::temperaturaInicial(port, lambda_value, 2, alpha, k * port.n_assets(), 10);
                float temp_inicial = 10;
                //portfolio::SA(port,lambda_value,0.99,4*port.n_assets(),temp_inicial,0.001);
                portfolio::SA(port, lambda_value, alpha, k * port.n_assets() * port.k(), temp_inicial, 0.001);
                portfolio::descida_first_improvement(port, lambda_value);
                pareto_front.insert(std::make_pair(
                        pareto::front<double, 2, portfolio::portfolio>::key_type(
                                {port.risk(), port.expected_return()}),
                        port));
                fout_points << port.risk() << "; " << port.expected_return() << "\n";
                //std::cout<<"Risk: "<<port.risk() << " - return: "<<port.expected_return()<<std::endl;
                //std::cout<<port<<std::endl;
                lambda_value += lambda_step;
                std::cout << i << " - " << lambda_value << std::endl;
            }//fim while
            fout_pareto << i << "\n";
            for (auto points: pareto_front) {
                fout_pareto << points.first.values()[0] << "; " << points.first.values()[1] << "\n";
            }
            auto end = std::chrono::system_clock::now();
            values.push_back(pareto_front.hypervolume());
            times.push_back(end - start);

            //pareto::plot_front(pareto_front);
            //matplot::save(inputFileName + "_" + std::to_string(i) + ".jpg");

        }
        fout_pareto.close();
        fout_points.close();
        std::ofstream fout(inputFileName + "_hipervolume2.txt");
        for (int i = 0; i < values.size(); ++i) {
            fout << times[i].count() << ";" << values[i] << "\n";
        }
        fout.close();
    }
    //std::cout<<(-1)*pareto_front.hypervolume() <<std::endl;
    //pareto::plot_front(pareto_front);
    //matplot::save("plot5032.jpg");
    return 0;
}