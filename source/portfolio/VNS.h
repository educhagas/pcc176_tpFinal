//
// Created by eduar on 23/11/2021.
//

#ifndef PCC176_TPFINAL_VNS_H
#define PCC176_TPFINAL_VNS_H
#include "portfolio.h"

namespace portfolio{

    float VNS(portfolio& p, float lambda_value, int VNS_max, int r);

    float gera_um_vizinho_qualquer(portfolio& p, float lambda_value, int k);

    float gera_vizinho_trocas_alocacao(portfolio& p, float lambda_value);

    float gera_vizinho_rotacao(portfolio& p, float lambda_value, int n_deslocamentos);

    float gera_vizinho_trocas_alocados_nao_alocados(portfolio& p, float lambda_value);

}//namespace portfolio

#endif //PCC176_TPFINAL_VNS_H
