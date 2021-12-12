//
// Created by eduar on 29/09/2021.
//

#include "market_data.h"
#include <iostream>
#include <fstream>
#include <string>
#include <sstream>

namespace portfolio {
    market_data::market_data(std::string_view file_name) {
        const std::string s_file_name = std::string(file_name);
        std::string line;
        std::ifstream my_data(s_file_name);
        if (not my_data.is_open()) {
            std::cout << "O Arquivo " << s_file_name << " nao pode ser aberto.\n";
            exit(1);
        }
        std::getline(my_data, line);
        this->n_assets_ = std::stoi(line);
        //define tamanho matrix de covariancia
        this->covariance_matrix_.resize(this->n_assets_);
        for (size_t i = 0; i < this->n_assets_; i++) {
            covariance_matrix_[i].resize(this->n_assets_);
        }
        for (size_t i = 0; i < this->n_assets_; i++) {
            std::getline(my_data, line);
            std::istringstream ss(line);
            std::string word;
            ss >> word;
            this->mean_return_.push_back(std::stof(word));
            ss >> word;
            this->std_return_.push_back(std::stof(word));
        }
        int total = this->n_assets_ * ((this->n_assets_ + 1) / 2);
        for (size_t k = 0; k < total; k++) {
            std::getline(my_data, line);
            int i, j;
            float value;
            std::istringstream ss(line);
            std::string word;
            ss >> word;
            i = std::stoi(word);
            ss >> word;
            j = std::stoi(word);
            ss >> word;
            value = std::stof(word);
            this->covariance_matrix_[i - 1][j - 1] = value;
            if (i != j) {
                this->covariance_matrix_[j - 1][i - 1] = value;
            }
        }
        my_data.close();
    }

    int market_data::n_assets() const {
        return this->n_assets_;
    }

    float market_data::get_return_of(int asset_index) {
        return this->std_return_[asset_index];
    }

    float market_data::get_covariance_of(int asset_index_i, int asset_index_j) {
        return this->covariance_matrix_[asset_index_i][asset_index_j];
    }
}//namespace portfolio

