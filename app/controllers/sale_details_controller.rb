class SaleDetailsController < InheritedResources::Base

  private

    def sale_detail_params
      params.require(:sale_detail).permit(:sale_id, :product_id, :precio, :quantity, :subtotal)
    end
end

