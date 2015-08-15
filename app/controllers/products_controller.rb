class ProductsController < ApplicationController

      def index
        @products = Product.all

      end

          def new

          end


          def create
            product_params= params.require(:product).permit(:title, :description,:price)
             @product = Product.new(product_params)
             @product.save
         redirect_to @product
          end

          def show
             @product = Product.find(params[:id])
          end

          def edit
            @product = Product.find(params[:id])
          end


          def update
            @product = Product.find(params[:id])
            product_params= params.require(:product).permit(:title, :description,:price)

            if @product.update(product_params)
            redirect_to @product
            else
            render 'edit'
            end
          end

          def destroy
               @product = Product.find(params[:id])
               @product.destroy

               redirect_to @product
          end

          def delete
            @product = Product.find(params[:id])
          end



end
