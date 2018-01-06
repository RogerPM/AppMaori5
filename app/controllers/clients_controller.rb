class ClientsController < InheritedResources::Base

  private

    def client_params
      params.require(:client).permit(:name, :last_name, :identification_card, :gender, :phone, :email, :birthday, :address, :country, :province, :city)
    end
end

