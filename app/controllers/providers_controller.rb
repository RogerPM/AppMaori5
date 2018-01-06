class ProvidersController < InheritedResources::Base

  private

    def provider_params
      params.require(:provider).permit(:name, :ruc, :phone, :address, :email, :state)
    end
end

