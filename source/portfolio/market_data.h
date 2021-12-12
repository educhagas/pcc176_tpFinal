//
// Created by eduar on 29/09/2021.
//

#ifndef PCC176_TPFINAL_MARKET_DATA_H
#define PCC176_TPFINAL_MARKET_DATA_H

#include <string_view>
#include <vector>

namespace portfolio {
    class market_data {
    public:
        explicit market_data(std::string_view file_name);

        [[nodiscard]] int n_assets() const;

        float get_return_of(int asset_index);

        float get_covariance_of(int asset_index_i, int asset_index_j);

    private:
        int n_assets_;
        std::vector<float> mean_return_;
        std::vector<float> std_return_;
        std::vector<std::vector<float>> covariance_matrix_;

    };
}//namespace portfolio



#endif //PCC176_TPFINAL_MARKET_DATA_H
