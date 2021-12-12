//
// Created by eduar on 09/11/2021.
//

#include "descida.h"
#include <random>
#include <iostream>
#include <map>

namespace portfolio {
    float melhor_vizinho_movimento_troca_alocados(portfolio &p, float lambda_value) {
        float fo_melhor_viz = p.evaluate(lambda_value);
        float fo_viz;
        portfolio melhor_viz = p;
        std::vector<int> asset_allocated;
        for (size_t i = 0; i < p.n_assets(); ++i) {
            if (p.asset_proportions_at(i) != 0) {
                asset_allocated.push_back(i);
            }
        }
        for (int i: asset_allocated) {
            for (int j: asset_allocated) {
                if (i != j) {
                    if (p.asset_proportions_at(i) != p.asset_proportions_at(j)) {
                        //troca
                        p.swap(i, j);
                        //avalia troca
                        p.evaluate_risk_return();
                        fo_viz = p.evaluate(lambda_value);
                        if (fo_viz < fo_melhor_viz) {
                            melhor_viz = p;
                            fo_melhor_viz = fo_viz;
                        }

                        //desfaz troca
                        p.swap(i, j);
                    }
                }
            }
        }
        p = melhor_viz;
        return fo_melhor_viz;
    }

    float melhor_vizinho_movimento_troca_alocados_nao_alocados(portfolio &p, float lambda_value) {
        float fo_melhor_viz = p.evaluate(lambda_value);
        float fo_viz;
        portfolio melhor_viz = p;
        std::vector<int> asset_allocated;
        std::vector<int> asset_not_allocated;
        for (size_t i = 0; i < p.n_assets(); ++i) {
            if (p.asset_proportions_at(i) != 0) {
                asset_allocated.push_back(i);
            } else {
                asset_not_allocated.push_back(i);
            }
        }
        for (int i: asset_allocated) {
            for (int j: asset_not_allocated) {
                //troca
                p.swap(i, j);
                //avalia troca
                p.evaluate_risk_return();
                fo_viz = p.evaluate(lambda_value);
                if (fo_viz < fo_melhor_viz) {
                    melhor_viz = p;
                    fo_melhor_viz = fo_viz;
                }

                //desfaz troca
                p.swap(i, j);
            }
        }

        p = melhor_viz;
        return fo_melhor_viz;
    }

    float melhor_vizinho_movimento_realocacao(portfolio &p, float lambda_value) {
        float fo_melhor_viz = p.evaluate(lambda_value);
        float fo_viz;
        portfolio melhor_viz = p;
        std::vector<int> asset_allocated;
        for (size_t i = 0; i < p.n_assets(); ++i) {
            if (p.asset_proportions_at(i) != 0) {
                asset_allocated.push_back(i);
            }
        }
        for (int i: asset_allocated) {
            for (int j: asset_allocated) {
                if (i != j) {
                    if ((p.asset_proportions_at(i) != p.lower_bound()) &&
                        (p.asset_proportions_at(j) != p.upper_bound())) {
                        //troca
                        p.send_allocation(i, j);
                        //avalia troca
                        p.evaluate_risk_return();
                        fo_viz = p.evaluate(lambda_value);
                        if (fo_viz < fo_melhor_viz) {
                            melhor_viz = p;
                            fo_melhor_viz = fo_viz;
                        }
                        //desfaz troca
                        p.send_allocation(j, i);
                    }
                }
            }
        }
        p = melhor_viz;
        return fo_melhor_viz;
    }

    float vizinho_aleatorio(portfolio &p, float lambda_value) {
        float range1 = (2.0 * float(p.k())) / (float(p.k()) - 1 + (2.0 * float(p.n_assets())));
        float range2 = (float(p.k()) - 1.0) / (float(p.k()) - 1.0 + (2.0 * float(p.n_assets())));
        //std::cout<<"r1: "<< range1 << " - r2: "<<range2<<std::endl;
        std::random_device rd;
        std::mt19937 eng(rd());
        std::uniform_real_distribution<float> distr(0, 1);
        float r = distr(eng);

        std::vector<int> asset_allocated;
        std::vector<int> asset_not_allocated;
        for (size_t i = 0; i < p.n_assets(); ++i) {
            if (p.asset_proportions_at(i) != 0) {
                asset_allocated.push_back(i);
            } else {
                asset_not_allocated.push_back(i);
            }
        }
        if (r < range1) {
            //vizinhança movimento de realocação
            //std::cout << "Realoca "<<std::endl;
            std::vector<int> from;
            std::vector<int> to;
            std::sample(asset_allocated.begin(),
                        asset_allocated.end(),
                        std::back_inserter(from),
                        1,
                        eng);
            std::sample(asset_allocated.begin(),
                        asset_allocated.end(),
                        std::back_inserter(to),
                        1,
                        eng);
            while ((from[0] == to[0]) || (p.asset_proportions_at(from[0]) == p.lower_bound()) ||
                   (p.asset_proportions_at(to[0]) == p.upper_bound())) {
                from.clear();
                to.clear();
                std::sample(asset_allocated.begin(),
                            asset_allocated.end(),
                            std::back_inserter(from),
                            1,
                            eng);
                std::sample(asset_allocated.begin(),
                            asset_allocated.end(),
                            std::back_inserter(to),
                            1,
                            eng);
            }
            p.send_allocation(from[0], to[0]);
        } else if (r < (range1 + range2)) {
            //vizinhança troca alocados
            //std::cout << "Troca alocados"<<std::endl;
            std::vector<int> out;
            std::sample(asset_allocated.begin(),
                        asset_allocated.end(),
                        std::back_inserter(out),
                        2,
                        eng);
            while (p.asset_proportions_at(out[0]) == p.asset_proportions_at(out[1])) {
                out.clear();
                std::sample(asset_allocated.begin(),
                            asset_allocated.end(),
                            std::back_inserter(out),
                            2,
                            eng);
            }
            p.swap(out[0], out[1]);
        } else {
            //troca alocado com não alocado
            //std::cout << "troca alocado n alocado "<<std::endl;
            std::vector<int> allocated;
            std::vector<int> not_allocated;
            std::sample(asset_allocated.begin(),
                        asset_allocated.end(),
                        std::back_inserter(allocated),
                        1,
                        eng);
            std::sample(asset_not_allocated.begin(),
                        asset_not_allocated.end(),
                        std::back_inserter(not_allocated),
                        1,
                        eng);
            p.swap(allocated[0], not_allocated[0]);
        }
        p.evaluate_risk_return();
        return p.evaluate(lambda_value);
    }

    float descida_best_improvement(portfolio &p, float lambda_value) {
        float fo_star = p.evaluate(lambda_value);
        portfolio p_star = p;
        portfolio p_vizinho1 = p;
        portfolio p_vizinho2 = p;
        portfolio p_vizinho3 = p;
        float fo_vizinho1, fo_vizinho2, fo_vizinho3;
        bool melhorou = true;
        while (melhorou) {
            melhorou = false;
            fo_vizinho1 = melhor_vizinho_movimento_realocacao(p_vizinho1, lambda_value);
            fo_vizinho2 = melhor_vizinho_movimento_troca_alocados(p_vizinho2, lambda_value);
            fo_vizinho3 = melhor_vizinho_movimento_troca_alocados_nao_alocados(p_vizinho3, lambda_value);
            if (fo_vizinho1 < fo_star) {
                melhorou = true;
                fo_star = fo_vizinho1;
                p_star = p_vizinho1;
            }
            if (fo_vizinho2 < fo_star) {
                melhorou = true;
                fo_star = fo_vizinho2;
                p_star = p_vizinho2;
            }
            if (fo_vizinho3 < fo_star) {
                melhorou = true;
                fo_star = fo_vizinho3;
                p_star = p_vizinho3;
            }
            p_vizinho1 = p_star;
            p_vizinho2 = p_star;
            p_vizinho3 = p_star;
        }
        p = p_star;
        return fo_star;
    }

    float vizinho_aleatorio_troca_alocados_porcao(portfolio &p, float lambda_value) {
        std::random_device rd;
        std::mt19937 eng(rd());
        std::vector<int> asset_allocated;
        for (size_t i = 0; i < p.n_assets(); ++i) {
            if (p.asset_proportions_at(i) != 0) {
                asset_allocated.push_back(i);
            }
        }
        std::vector<int> from;
        std::vector<int> to;
        std::sample(asset_allocated.begin(),
                    asset_allocated.end(),
                    std::back_inserter(from),
                    1,
                    eng);
        std::sample(asset_allocated.begin(),
                    asset_allocated.end(),
                    std::back_inserter(to),
                    1,
                    eng);
        while ((from[0] == to[0]) || (p.asset_proportions_at(from[0]) == p.lower_bound()) ||
               (p.asset_proportions_at(to[0]) == p.upper_bound())) {
            from.clear();
            to.clear();
            std::sample(asset_allocated.begin(),
                        asset_allocated.end(),
                        std::back_inserter(from),
                        1,
                        eng);
            std::sample(asset_allocated.begin(),
                        asset_allocated.end(),
                        std::back_inserter(to),
                        1,
                        eng);
        }
        int max_envio = p.asset_proportions_at(from[0]) - p.lower_bound();
        int max_recebe = p.upper_bound() - p.asset_proportions_at(to[0]);
        int diff = std::min(max_envio, max_recebe);
        std::uniform_int_distribution<int> distr(1, diff);
        int r = distr(eng);
        p.send_allocation(from[0], to[0], r);

        p.evaluate_risk_return();
        return p.evaluate(lambda_value);
    }

    float descida_n_best_improvement(portfolio &p, float lambda_value, int n_best) {
        float fo_star = p.evaluate(lambda_value);
        portfolio p_star = p;
        portfolio p_vizinho1 = p;
        portfolio p_vizinho2 = p;
        portfolio p_vizinho3 = p;
        std::vector<int> asset_allocated;
        std::vector<int> asset_not_allocated;
        for (size_t i = 0; i < p.n_assets(); ++i) {
            if (p.asset_proportions_at(i) != 0) {
                asset_allocated.push_back(i);
            } else {
                asset_not_allocated.push_back(i);
            }
        }

        p.evaluate_risk_return();
        float fo_p = p.evaluate(lambda_value);

        bool melhorou = true;
        while (melhorou) {
            melhorou = false;
            std::map<float, portfolio> melhores_vizinhos;
            std::vector<int> asset_allocated;
            std::vector<int> asset_not_allocated;
            for (size_t i = 0; i < p.n_assets(); ++i) {
                if (p.asset_proportions_at(i) != 0) {
                    asset_allocated.push_back(i);
                } else {
                    asset_not_allocated.push_back(i);
                }
            }

            //float fo_vizinho1,fo_vizinho2,fo_vizinho3;

            //fo_vizinho1 = melhor_vizinho_movimento_realocacao(p_vizinho1,lambda_value);
            //melhor_vizinho_movimento_realocacao
            float fo_viz;
            //portfolio melhor_viz(p);

            for (int i: asset_allocated) {
                for (int j: asset_allocated) {
                    if (i != j) {
                        if ((p.asset_proportions_at(i) != p.lower_bound()) &&
                            (p.asset_proportions_at(j) != p.upper_bound())) {
                            //troca
                            p.send_allocation(i, j);
                            //avalia troca
                            p.evaluate_risk_return();
                            fo_viz = p.evaluate(lambda_value);

                            portfolio port = p;
                            float fo = fo_viz;
                            melhores_vizinhos[fo] = port;
                            if (melhores_vizinhos.size() > n_best) {
                                melhores_vizinhos.erase(std::prev(melhores_vizinhos.end()));
                            }
                            //desfaz troca
                            p.send_allocation(j, i);
                        }
                    }
                }
            }

            //fim melhor_vizinho_movimento_realocacao
            //std::cout<<"viz1"<<std::endl;
            //std::cout<<"melhor vizinho 1"<<std::endl;
            //fo_vizinho2 = melhor_vizinho_movimento_troca_alocados(p_vizinho2, lambda_value);
            //melhor_vizinho_movimento_troca_alocados

            //float fo_melhor_viz = p.evaluate(lambda_value);
            //float fo_viz;
            //portfolio melhor_viz(p);
            for (int i: asset_allocated) {
                for (int j: asset_allocated) {
                    if (i != j) {
                        if (p.asset_proportions_at(i) != p.asset_proportions_at(j)) {
                            //troca
                            p.swap(i, j);
                            //avalia troca
                            p.evaluate_risk_return();
                            fo_viz = p.evaluate(lambda_value);

                            portfolio port = p;
                            float fo = fo_viz;
                            melhores_vizinhos[fo] = port;
                            if (melhores_vizinhos.size() > n_best) {
                                melhores_vizinhos.erase(std::prev(melhores_vizinhos.end()));
                            }

                            //desfaz troca
                            p.swap(i, j);
                        }
                    }
                }
            }
            //fim melhor_vizinho_movimento_troca_alocados
            //std::cout<<"melhor vizinho 2"<<std::endl;
            //fo_vizinho3 = melhor_vizinho_movimento_troca_alocados_nao_alocados(p_vizinho3,lambda_value);
            //melhor_vizinho_movimento_troca_alocados_nao_alocados
            for (int i: asset_allocated) {
                for (int j: asset_not_allocated) {
                    //troca
                    p.swap(i, j);
                    //avalia troca
                    p.evaluate_risk_return();
                    fo_viz = p.evaluate(lambda_value);

                    portfolio port = p;
                    float fo = fo_viz;
                    melhores_vizinhos[fo] = port;
                    if (melhores_vizinhos.size() > n_best) {
                        melhores_vizinhos.erase(std::prev(melhores_vizinhos.end()));
                    }

                    //desfaz troca
                    p.swap(i, j);
                }
            }
            //fim melhor_vizinho_movimento_troca_alocados_nao_alocados
            //std::cout<<"melhor vizinho 3"<<std::endl;
            //std::cout<< "melhores antes: "<< melhores_vizinhos.size() << std::endl;
            while (!melhores_vizinhos.empty() && std::prev(melhores_vizinhos.end())->first > fo_p) {
                melhores_vizinhos.erase(std::prev(melhores_vizinhos.end()));
            }
            //std::cout<< "melhores depois: "<< melhores_vizinhos.size() << std::endl;
            if (!melhores_vizinhos.empty()) {

                if (melhores_vizinhos.size() == 1) {
                    //std::cout << "1"<<std::endl;
                    //std::cout<<p<<std::endl;
                    p = melhores_vizinhos.begin()->second;
                    //std::cout<<p<<std::endl;
                    fo_p = melhores_vizinhos.begin()->first;
                    //fo_p = descida_best_improvement(p,lambda_value);
                    //std::cout << "2"<<std::endl;
                } else {
                    //std::cout << "3"<<std::endl;
                    std::random_device rd;
                    std::mt19937 eng(rd());
                    std::uniform_int_distribution<int> distr(0, melhores_vizinhos.size() - 1);
                    int r = distr(eng);
                    std::map<float, portfolio>::iterator it = melhores_vizinhos.begin();
                    for (int i = 0; i < r; ++i) {
                        ++it;
                    }
                    p = it->second;
                    //std::cout<<p<<std::endl;
                    fo_p = it->first;
                    //std::cout << "4"<<std::endl;
                    melhorou = true;
                }
            }
        }
        //std::cout<<"saiu do while"<<std::endl;
        return fo_p;
    }

    float descida_randomica(portfolio &p, float lambda_value, int IterMax) {
        int iter;
        float fo, fo_viz;

        int melhor_i, melhor_j;
        clock_t inicio_CPU, fim_CPU;

        p.evaluate_risk_return();
        fo = p.evaluate(lambda_value);
        iter = 0;


        int i = 0;
        int j = 0;
        inicio_CPU = fim_CPU = clock();

        while (iter < IterMax) {
            iter++;
            inicio_CPU = clock();
            /*  Implementar a descida randômica  */
            portfolio p_vizinho = p;
            fo_viz = vizinho_aleatorio(p_vizinho, lambda_value);
            if (fo_viz < fo) {
                fo = fo_viz;
                p = p_vizinho;
                iter = 0;
            }
        }


        return fo;
    }

    float descida_first_improvement(portfolio &p, float lambda_value) {
        bool melhorou = true;
        float fo = p.evaluate(lambda_value);
        float fo_vizinho;
        while (melhorou) {
            melhorou = false;
            fo_vizinho = vizinho_first_improvement(p, lambda_value);
            if (fo_vizinho < fo) {
                fo = fo_vizinho;
                melhorou = true;
            }
        }
        return fo;
    }

    float vizinho_first_improvement(portfolio &p, float lambda_value) {
        float fo = p.evaluate(lambda_value);

        std::vector<int> asset_allocated;
        std::vector<int> asset_not_allocated;
        for (size_t i = 0; i < p.n_assets(); ++i) {
            if (p.asset_proportions_at(i) != 0) {
                asset_allocated.push_back(i);
            } else {
                asset_not_allocated.push_back(i);
            }
        }

        //melhor_vizinho_movimento_realocacao
        float fo_viz;
        //portfolio melhor_viz(p);

        for (int i: asset_allocated) {
            for (int j: asset_allocated) {
                if (i != j) {
                    if (p.asset_proportions_at(i) != p.asset_proportions_at(j)) {
                        //troca
                        p.swap(i, j);
                        //avalia troca
                        p.evaluate_risk_return();
                        fo_viz = p.evaluate(lambda_value);

                        if (fo_viz < fo) {
                            return fo_viz;
                        }

                        //desfaz troca
                        p.swap(i, j);
                    }
                }
            }
        }//fim melhor_vizinho_movimento_troca_alocados

        for (int i: asset_allocated) {
            for (int j: asset_not_allocated) {
                //troca
                p.swap(i, j);
                //avalia troca
                p.evaluate_risk_return();
                fo_viz = p.evaluate(lambda_value);

                if (fo_viz < fo) {
                    return fo_viz;
                }

                //desfaz troca
                p.swap(i, j);
            }
        }

        for (int i: asset_allocated) {
            for (int j: asset_allocated) {
                if (i != j) {
                    if ((p.asset_proportions_at(i) != p.lower_bound()) &&
                        (p.asset_proportions_at(j) != p.upper_bound())) {
                        //troca
                        p.send_allocation(i, j);
                        //avalia troca
                        p.evaluate_risk_return();
                        fo_viz = p.evaluate(lambda_value);

                        if (fo_viz < fo) {
                            return fo_viz;
                        }
                        //desfaz troca
                        p.send_allocation(j, i);
                    }
                }
            }
        }//fim melhor_vizinho_movimento_realocacao

        return fo;
    }
}//namespace portfolio