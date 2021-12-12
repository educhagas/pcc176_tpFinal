//
// Created by Eduardo on 25/09/2021.
//

#ifndef PCC176_TPFINAL_PORTFOLIO_H
#define PCC176_TPFINAL_PORTFOLIO_H

#include <ostream>
#include "market_data.h"

namespace portfolio {
    class portfolio {
    public:
        explicit portfolio(const std::shared_ptr<market_data> &data);

        //portfolio(portfolio &p);

        portfolio();

        friend std::ostream &operator<<(std::ostream &os, const portfolio &portfolio1);

        portfolio& operator=(const portfolio& other);

        float evaluate(float lambda_value);

        void evaluate_risk_return();

        int n_assets();

        int asset_proportions_at(int index);

        void set_asset_proportions_at(int index, int value);

        size_t k() const;

        void swap(int i, int j);

        int lower_bound()const;

        int upper_bound()const;


        void send_allocation(int from, int to, int quantidade = 1);

        float risk()const;

        float expected_return()const;

    private:
        std::vector<int> assets_proportions_;
        //std::vector<bool> asset_allocated_;
        //std::vector<bool> asset_has_lower_bound_;
        //std::vector<bool> asset_has_upper_bound_;
        int lower_bound_;
        int upper_bound_;
        float expected_return_;
        float risk_;
        size_t k_;
        std::shared_ptr<market_data> market_data_;
    };
}//namespace portfolio



#endif //PCC176_TPFINAL_PORTFOLIO_H
