class ProductsController < ApplicationController

    def index
        @products = Product.all
    end

    def show
        @product = Product.find(params[:id])
    end

    def new
        @product = Product.new
    end

    def create
        @product =Product.new

        @product.name = params[:procuts][:name]
        @product.desciption = params[:procuts][:desciption]
        @procuts.price = params[:procuts][:price]

        if @procuts.save
            redirect_to products_url
        else
            redirect_to :new #new_products_url
        end
    end

    def edit
        @product =Product.find(params[:id])
    end

    def update
        @product =Product.find(params[:id])

        @product.name = params[:procuts][:name]
        @product.desciption = params[:procuts][:desciption]
        @procuts.price = params[:procuts][:price]

        if @procuts.save
            redirect_to products_url
        else
            redirect_to :edit #new_products_url
        end

    end

    def destory
        @product =Product.find(params[:id])
        @product.destroy
        redirect_to :index
    end



end
