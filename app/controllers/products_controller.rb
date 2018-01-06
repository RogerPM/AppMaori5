class ProductsController < InheritedResources::Base

  private

    def product_params
      params.require(:product).permit(:name, :purchase_price, :sale_price, :quantity, :minimun_quantity, :gain, :provider_id, :type, :state)
    end
end

