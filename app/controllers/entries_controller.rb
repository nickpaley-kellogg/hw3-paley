class EntriesController < ApplicationController
  def new
    @place = Place.find(params[:place_id])
    @entry = Entry.new
  end

  def create
    @place = Place.find(params[:place_id])
    @entry = @place.entries.new(entry_params)
    if @entry.save
      redirect_to @place
    else
      render :new
    end
  end
end