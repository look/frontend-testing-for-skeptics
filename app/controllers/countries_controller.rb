class CountriesController < ApplicationController
  def index
    @title = 'Countries'

    respond_to do |format|
      format.html
      format.json { render :json => Country.typeahead_data }
    end
  end

  def show
    @country = Country.find(params[:id])
    @title = @country.name
  end
end
