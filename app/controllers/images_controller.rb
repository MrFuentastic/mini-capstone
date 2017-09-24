class ImagesController < ApplicationController

  def index
  end

  def new
    @organs = Organ.all
  end

  def create
    image = Image.new(

                      )
    image.save
    flash[:success] = "Image Added"
    redirect_to "/organs"
  end

  def show
  end

  def edit
    @organs = Organ.all
  end

  def update
    image = Image.find(params[:id])
    image.assign_attributes(
                              url: params[:url],
                              organ_id: params[:organ_id],
                              )
    image.save
    flash[:info] = "Item Updated"
    redirect_to "/organ}"
  end

  def destroy
  end

end
