//
// Created by eduar on 03/12/2021.
//

#ifndef PCC176_TPFINAL_SA_H
#define PCC176_TPFINAL_SA_H

#include "portfolio.h"

namespace portfolio {
    float SA(portfolio &p, float lambda_value,
             float alpha, float SAmax, double temp_inicial,
             double temp_final);

    float temperaturaInicial(portfolio &p, float lambda_value,
                             float beta, float gama, float SAmax,
                             double temp_inicial);
}//namespace portfolio


#endif //PCC176_TPFINAL_SA_H
