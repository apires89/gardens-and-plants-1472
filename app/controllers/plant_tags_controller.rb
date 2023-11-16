class PlantTagsController < ApplicationController
  def new
    @plant = Plant.find(params[:plant_id])
    @plant_tag = PlantTag.new
  end

  def create
    # find the id of the plant
    @plant = Plant.find(params[:plant_id])
    #receving and array of tag_ids
    @tags = Tag.where(params["plant_tag"]["tag_id"])
    #iterate over them and create one plant_tag per tag
    @tags.each do |tag|
      PlantTag.create(plant: @plant, tag: tag)
    end
    redirect_to garden_path(@plant.garden)
  end

  private

  def plant_tag_params
    params.require(:plant_tag).permit(:tag_id)

  end



end
