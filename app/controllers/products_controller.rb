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
        @product = Product.new

        @product.name = params[:product][:name]
        @product.desciption = params[:product][:desciption]
        @product.price_in_cents = params[:product][:price_in_cents]
        @product.url = params[:product][:url]

        if @product.save
            redirect_to "/products"
        else
            redirect_to new_product_url
        end
    end

    def edit
        @product = Product.find(params[:id])
    end

    def update
        @product =Product.find(params[:id])

        @product.name = params[:product][:name]
        @product.desciption = params[:product][:desciption]
        @product.price_in_cents = params[:product][:price_in_cents]
        @product.url = params[:product][:url]
        if @product.save
            redirect_to "/products"
        else
            redirect_to new_product_url
        end

    end

    def destory
        @product =Product.find(params[:id])
        @product.destroy
        redirect_to :index
    end



end
