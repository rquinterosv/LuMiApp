class RoutesController < InheritedResources::Base

  private

    def route_params
      params.require(:route).permit(:country_id, :region_id, :location, :zone, :name, :grade, :date, :category, :lead_climbing, :observation)
    end

end
