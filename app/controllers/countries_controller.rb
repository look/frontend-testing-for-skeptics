class CountriesController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.json { render :json => Country.typeahead_data }
    end
  end

  def show
    @country = Country.find(params[:id])
  end
end
