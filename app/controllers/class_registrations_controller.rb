class ClassRegistrationsController < InheritedResources::Base

  private

    def class_registration_params
      params.require(:class_registration).permit(:client_id, :id, :email, :phone, :subscription_id, :expiration_date, :present)
    end
end

