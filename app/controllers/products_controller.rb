class ProductsController < ApplicationController

    def index
        byebug
        @cart = session[:cart]
    end

    def add
        cart << params[:product]

        redirect_to products_path
    end
end