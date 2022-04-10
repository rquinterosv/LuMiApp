class CountriesController < InheritedResources::Base

  private

    def country_params
      params.require(:country).permit(:name)
    end

end
