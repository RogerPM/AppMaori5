class SubscriptionsController < InheritedResources::Base

  private

    def subscription_params
      params.require(:subscription).permit(:client_id, :start_time, :end_time, :service_id, :membership_id, :total_entries, :current_entries, :type, :state)
    end
end

