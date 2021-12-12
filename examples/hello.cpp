//
// Created by eduar on 25/09/2021.
//

#include <iostream>
#include <portfolio/portfolio.h>
#include "portfolio/market_data.h"
#include "portfolio/descida.h"
#include "portfolio/VNS.h"

int main() {
    std::shared_ptr<portfolio::market_data> md(new portfolio::market_data("data/port5.txt"));
    portfolio::portfolio port(md);
    port.evaluate_risk_return();
    std::cout << port.evaluate(0.5) << std::endl;
    std::cout << port << std::endl;
    //portfolio::VNS(port,0.0,200,3);
    portfolio::descida_first_improvement(port, 0.5);
    //portfolio::descida_best_improvement(port,0.5);
//    for(int i = 0; i < 50; ++i){
//        portfolio::portfolio port1(port);
//        std::cout << "Antes: "<<i <<": "<<port << std::endl;
//        portfolio::vizinho_aleatorio(port1,0.5);
//        std::cout << "Depois: "<<i <<": "<<port1 << std::endl;
//    }
//    for(int i = 0; i < 2500; ++i){
//        melhor_vizinho_movimento_realocacao(port,0.5);
//        std::cout << "Descida2: "<<i <<": "<<port.evaluate(0.5)<< std::endl;
//    }
//    for(int i = 0; i < 50; ++i){
//        melhor_vizinho_movimento_troca(port,0.5);
//        std::cout << "Descida3: "<<i <<": "<<port.evaluate(0.5)<< std::endl;
//    }
//
//    for(int i = 0; i < 2500; ++i){
//        melhor_vizinho_movimento_realocacao(port,0.5);
//        std::cout << "Descida4: "<<i <<": "<<port.evaluate(0.5)<< std::endl;
//    }

    std::cout << "Fim:\n" << port << std::endl;

//    portfolio::portfolio port(md);
//    //std::cout << port << std::endl;
//    std::cout << port.evaluate(0.5)<< std::endl;
//    std::cout << "Hello" << std::endl;
    return 0;
}