//
// Created by eduar on 23/11/2021.
//

#include <chrono>
#include <random>
#include <iostream>
#include "VNS.h"
#include "descida.h"
namespace portfolio {
    float gera_um_vizinho_qualquer(portfolio &p, float lambda_value, int k) {
        float fo;
//        for(int i = 0; i < k;i++){
//            fo = vizinho_aleatorio(p,lambda_value);
//        }
        std::random_device rd;
        std::mt19937 eng(rd());
        std::uniform_int_distribution<int> distr(2, p.n_assets()/2);
        int r = distr(eng);
        switch (k) {
            case 1:
                fo = gera_vizinho_rotacao(p,lambda_value,1);
                break;
            case 2:
                fo = gera_vizinho_rotacao(p,lambda_value,r);
                break;
            case 3:
                fo = gera_vizinho_trocas_alocados_nao_alocados(p,lambda_value);
                break;
        }
        return fo;
    }

    float VNS(portfolio &p, float lambda_value, int VNS_max, int r) {
        // cria variaveis auxiliares
        float fo;
        int iter = 0;
        int MelhorIter = 0;
        int k;
        fo = p.evaluate(lambda_value);
        portfolio s_vizinho = p;
        float fo_vizinho = fo;
        // loop principal do VNS
        while (iter - MelhorIter < VNS_max) {
            iter++;
            k = 1; // comeca pela vizinhanca 1

            // loop das vizinhancas
            while (k <= r) {
                // Escolher vizinho s' qualquer na k-esima vizinhanca de s
                // Realizar a busca local no vizinho gerado
                // Verificar se melhorou a solucao s''
                // se sim, atualiza s e reinicia o contador de vizinhancas
                // caso contrario, incrementa o contador de vizinhancas
                s_vizinho = p;
                fo_vizinho = gera_um_vizinho_qualquer(s_vizinho,lambda_value,k);
                //fo_vizinho = descida_best_improvement(s_vizinho,lambda_value);
                //fo_vizinho = descida_n_best_improvement(s_vizinho,lambda_value,4);
                fo_vizinho = descida_randomica(s_vizinho,lambda_value,p.n_assets()*1.1);
                if(fo_vizinho < fo){
                    p = s_vizinho;
                    fo = fo_vizinho;
                    //std::cout << "Iter VNS: "<< iter <<" - fo: "<<fo << " - k: "<< k<<std::endl;
                    k = 1;
                    MelhorIter = iter;

                    //printf("Iter VNS = %3d \t  fo_star = %10.4f \n", iter, fo);
                    //std::cout<<p<<std::endl;
                }else{
                    k++;
                }
            }
            //std::cout<<"fim while r - iter: "<< iter <<" - melhor iter: "<<MelhorIter<<" - vnsmax: "<<VNS_max<<std::endl;
        }
        return fo;
    }

    float gera_vizinho_trocas_alocacao(portfolio &p, float lambda_value) {
        return 0;
    }

    float gera_vizinho_rotacao(portfolio &p, float lambda_value, int n_deslocamentos) {
        portfolio p_vizinho = p;
        for(size_t i = 0; i < p.n_assets();++i){
            int j = (i + n_deslocamentos)%p.n_assets();
            p.set_asset_proportions_at(i,p_vizinho.asset_proportions_at(j));
        }
        p.evaluate_risk_return();
        return p.evaluate(lambda_value);
    }

    float gera_vizinho_trocas_alocados_nao_alocados(portfolio &p, float lambda_value) {
        std::vector<int> asset_allocated;
        std::vector<int> asset_not_allocated;
        for(size_t i = 0; i < p.n_assets();++i){
            if(p.asset_proportions_at(i) != 0){
                asset_allocated.push_back(i);
            }else{
                asset_not_allocated.push_back(i);
            }
        }
        static std::default_random_engine generator =
                std::default_random_engine(
                        std::chrono::system_clock::now().time_since_epoch().count());
        std::shuffle(asset_allocated.begin(),asset_allocated.end(),generator);
        std::shuffle(asset_not_allocated.begin(),asset_not_allocated.end(),generator);
        for(size_t i = 0;i < p.k();++i){
            p.swap(asset_allocated[i],asset_not_allocated[i]);
        }
        return p.evaluate(lambda_value);
    }
}//namespace portfolio

