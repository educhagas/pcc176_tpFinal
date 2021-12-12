//
// Created by eduardo on 25/09/2021.
//

#include <random>
#include <chrono>
#include <numeric>
#include <iostream>
#include "portfolio.h"

namespace portfolio{

    portfolio::portfolio(const std::shared_ptr<market_data> &data)
                : market_data_(data),
                  lower_bound_(700),
                  upper_bound_(1500),
                  k_(10){
        static std::default_random_engine generator =
                std::default_random_engine(
                        std::chrono::system_clock::now().time_since_epoch().count());
        std::vector<bool> asset_has_lower_bound_;
        std::vector<bool> asset_has_upper_bound_;
        this->assets_proportions_.resize(data->n_assets(),0);
       // this->asset_allocated_.resize(data->n_assets(),false);
        asset_has_lower_bound_.resize(data->n_assets(), false);
        asset_has_upper_bound_.resize(data->n_assets(), false);
        std::uniform_int_distribution<int> d_int(0,int(this->k_) - 1);
        std::vector<int> v;
        for(size_t k = 0; k < data->n_assets();k++){
            v.push_back(int(k));
        }
        std::shuffle(v.begin(),v.end(),generator);
        int max_value = 10000;
        int total = 0;
        for(size_t k = 0; k < this->k_ ;k++){
            this->assets_proportions_[v[k]] = lower_bound_;
            //this->asset_allocated_[v[k]] = true;
            asset_has_lower_bound_[v[k]] = true;
            total += lower_bound_;
        }
        while(total < max_value){
            int rand = d_int(generator);
            if(!asset_has_upper_bound_[v[rand]]){
                this->assets_proportions_[v[rand]]+=1;
                total++;
                if(this->assets_proportions_[v[rand]] == this->upper_bound_){
                    asset_has_upper_bound_[v[rand]] = true;
                }
            }
        }
    }



    std::ostream &operator<<(std::ostream &os, const portfolio &portfolio1) {
        int j = 0;
        for (int i = 0; i < portfolio1.assets_proportions_.size();++i){
            if(portfolio1.assets_proportions_[i]){
                os << "Asset: " << i << " - value: " << portfolio1.assets_proportions_[i] << "\n";
                j++;
            }
        }
        if(j == 0){
            std::cout<< "os erro"<<std::endl;
        }
        os << "Risk: "<<portfolio1.risk_ << " - return: "<< portfolio1.expected_return_ <<"\n";
        return os;
    }

    float portfolio::evaluate(float lambda_value) {
        //std::cout<<"risk: "<< this->risk_<<" - return: "<<this->expected_return_<<std::endl;
        return (lambda_value * this->risk_) - ((1.0 - lambda_value) * this->expected_return_);

    }

//    portfolio::portfolio(portfolio &p) {
//        this->market_data_ = p.market_data_;
//        this->assets_proportions_ = p.assets_proportions_;
//        this->k_ = p.k_;
//        this->lower_bound_ = p.lower_bound_;
//        this->upper_bound_ = p.upper_bound_;
//        this->expected_return_ = p.expected_return_;
//        this->risk_ = p.risk_;
//        //this->asset_has_lower_bound_ = p.asset_has_lower_bound_;
//        //this->asset_has_upper_bound_ = p.asset_has_upper_bound_;
//    }

    void portfolio::evaluate_risk_return() {
        float total_risk = 0.0;
        float total_return = 0.0;
        std::vector<int> allocaded;
        std::vector<bool> asset_allocated;
        asset_allocated.resize(market_data_->n_assets(), false);
        for(size_t i = 0; i < market_data_->n_assets();++i){
            if(this->assets_proportions_[i] != 0){
                asset_allocated[i] = true;
            }
        }
        for(int i = 0; i < this->market_data_->n_assets();++i){
            if(asset_allocated[i]){
                total_return += ((float(this->assets_proportions_[i])/float(10000)) * this->market_data_->get_return_of(i));
                allocaded.push_back(i);
            }
        }
        for(int i = 0; i < allocaded.size() - 1;++i){
            for(int j = i + 1; j < allocaded.size(); ++j){
                total_risk+= ((float(this->assets_proportions_[allocaded[i]])/float(10000)) *
                        (float(this->assets_proportions_[allocaded[j]])/float(10000)) *
                        this->market_data_->get_covariance_of(i,j));
            }
        }
        this->risk_ = total_risk;
        this->expected_return_ = total_return;
    }

    int portfolio::n_assets() {
        return this->market_data_->n_assets();
    }

    int portfolio::asset_proportions_at(int index) {
        return this->assets_proportions_[index];
    }

    size_t portfolio::k() const {
        return this->k_;
    }

    void portfolio::swap(int i, int j) {
        std::swap(this->assets_proportions_[i],this->assets_proportions_[j]);
    }

    int portfolio::lower_bound() const {
        return this->lower_bound_;
    }

    int portfolio::upper_bound() const {
        return this->upper_bound_;
    }

    void portfolio::send_allocation(int from, int to, int quantidade) {
        this->assets_proportions_[from] = this->assets_proportions_[from] - quantidade;
        this->assets_proportions_[to] = this->assets_proportions_[to] + quantidade;

    }

    void portfolio::set_asset_proportions_at(int index, int value) {
        this->assets_proportions_[index] = value;
    }

    portfolio &portfolio::operator=(const portfolio &other) {
        if(this != &other){
            this->assets_proportions_ = other.assets_proportions_;
            this->market_data_ = other.market_data_;
            this->lower_bound_ = other.lower_bound_;
            this->k_ = other.k_;
            this->expected_return_ = other.expected_return_;
            this->risk_ = other.risk_;
            this->upper_bound_ = other.upper_bound_;
        }
        return *this;
    }

    portfolio::portfolio() {

    }

    float portfolio::risk() const {
        return this->risk_;
    }

    float portfolio::expected_return() const {
        return this->expected_return_;
    }


}//namespace portfolio