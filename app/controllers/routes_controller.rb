class RoutesController < InheritedResources::Base

  def index 
    @route = Route.new
    @routes = Route.all
  end

  def create
    @route = Route.new(route_params)
    puts @route
    puts @route.name
    respond_to do |format|
      if @route.save
        @route_new = Route.new
        format.html { redirect_to route_url(@route), notice: "Route was successfully created." }
        format.json { render :show, status: :created, location: @route }
        format.js
        format.turbo_stream
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @route.errors, status: :unprocessable_entity }
        format.js
        format.turbo_stream
      end
    end
  end

  private

    def route_params
      params.require(:route).permit(:country_id, :region_id, :location, :zone, :name, :grade, :date, :category, :lead_climbing, :observation)
    end

end
