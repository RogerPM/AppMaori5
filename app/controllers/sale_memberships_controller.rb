class SaleMembershipsController < InheritedResources::Base

  private

    def sale_membership_params
      params.require(:sale_membership).permit(:sale_id, :client_id, :membership_id, :precio, :quantity, :subtotal)
    end
end

