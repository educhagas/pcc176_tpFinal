//
// Created by eduar on 09/11/2021.
//

#ifndef PCC176_TPFINAL_DESCIDA_H
#define PCC176_TPFINAL_DESCIDA_H

#include "portfolio.h"

namespace portfolio {
    float melhor_vizinho_movimento_troca_alocados(portfolio &p, float lambda_value);

    float melhor_vizinho_movimento_troca_alocados_nao_alocados(portfolio &p, float lambda_value);

    float melhor_vizinho_movimento_realocacao(portfolio &p, float lambda_value);

    float vizinho_aleatorio(portfolio &p, float lambda_value);

    float descida_randomica(portfolio &p, float lambda_value, int IterMax);


    float vizinho_aleatorio_troca_alocados_porcao(portfolio &p, float lambda_value);

    float descida_best_improvement(portfolio &p, float lambda_value);

    float descida_n_best_improvement(portfolio &p, float lambda_value, int n_best);

    float vizinho_first_improvement(portfolio &p, float lambda_value);

    float descida_first_improvement(portfolio &p, float lambda_value);
}//namespace portfolio

#endif //PCC176_TPFINAL_DESCIDA_H
