class MembershipsController < InheritedResources::Base

  private

    def membership_params
      params.require(:membership).permit(:rate_name, :sessions, :service_id, :value, :discount, :total, :state)
    end
end

