class SalesController < InheritedResources::Base

  private

    def sale_params
      params.require(:sale).permit(:date, :client_id, :user_id, :subtotal, :iva, :total, :nota)
    end
end

