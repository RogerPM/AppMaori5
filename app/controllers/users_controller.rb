class UsersController < InheritedResources::Base

  private

    def user_params
      params.require(:user).permit(:name, :last_name, :identification_card, :address, :birthday, :phone, :contract_date, :contract_date_end, :position, :state)
    end
end

