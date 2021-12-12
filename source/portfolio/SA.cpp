//
// Created by eduar on 03/12/2021.
//

#include <random>
#include <iostream>
#include "SA.h"
#include "descida.h"

namespace portfolio {

    float temperaturaInicial(portfolio &p, float lambda_value, float beta, float gama, float SAmax,
                             double temp_inicial) {
        double temp = temp_inicial;
        bool continua = true;
        float fo_viz, fo, fo_star;
        int aceitos;
        double delta;
        double x;

        fo = fo_star = fo_viz = p.evaluate(lambda_value);

        std::random_device rd;
        std::mt19937 eng(rd());
        std::uniform_real_distribution<float> distr(0, 1);

        while (continua) {
            aceitos = 0;
            for (int iterT = 1; iterT <= SAmax; iterT++) {
                portfolio p_vizinho = p;
                fo_viz = vizinho_aleatorio(p_vizinho, lambda_value);
                delta = fo_viz - fo;
                if (delta < 0)
                    aceitos++;
                else {
                    x = distr(eng);
                    if (x < exp(-delta / temp))
                        aceitos++;
                }
            }

            if (aceitos >= gama * SAmax)
                continua = false;
            else
                temp = beta * temp;

        }

        return temp;
    }

    float SA(portfolio &p, float lambda_value, float alpha, float SAmax, double temp_inicial, double temp_final) {
        float fo, fo_viz, fo_star;
        int aux;
        float delta, x;
        int iterT = 0;

        std::random_device rd;
        std::mt19937 eng(rd());
        std::uniform_real_distribution<float> distr(0, 1);


        double temp = temp_inicial;
        //std::cout << "Temperatura inicial: " << temp << std::endl;
        portfolio p_star;
        p_star = p;
        fo = fo_star = fo_viz = p.evaluate(lambda_value);
        //std::cout << "fo: "<< fo << std::endl;
        /* implementar o loop do SA */
        while (temp > temp_final) {
            while (iterT < SAmax) {
                iterT++;
                portfolio p_vizinho = p;
                fo_viz = vizinho_aleatorio(p, lambda_value);
                delta = fo_viz - fo;
                if (delta < 0) {
                    fo = fo_viz;
                    //std::cout << "i: "<< melhor_i << "j: "<< melhor_j << std::endl;
                    //swap(s[melhor_i], s[melhor_j]);
                    p = p_vizinho;
                    if (fo < fo_star) {
                        fo_star = fo;
                        p_star = p;
                        //busca local aki?
                        //fo_star = descida_first_improvement(p_star,lambda_value);
                        //std::cout << "Temperatura: " << temp << " .Melhor solucao: " << fo_star << std::endl;
                    }
                } else {
                    x = distr(eng);
                    if (x < exp(-delta / temp)) {
                        fo = fo_viz;
                        //std::cout << "-- i: "<< melhor_i << "j: "<< melhor_j << std::endl;
                        p = p_vizinho;
                    }
                }
            }
            temp = alpha * temp;
            iterT = 0;
        }
        p = p_star;

        return fo_star;
    }
}//namespace portfolio