class OrgansController < ApplicationController
  def index
    @organs = Organ.all
  end

  def new
  end

  def create
    organ = Organ.new(
                      name: params[:name],
                      price: params[:price],
                      image: params[:image],
                      description: params[:description]
                      )
    organ.save
    flash[:success] = "Item Added"
    redirect_to "/organs/#{organ.id}"
  end

  def show
    @organ = Organ.find(params[:id])
  end

  def edit
    @organ = Organ.find(params[:id])
  end

  def update
    organ = Organ.find(params[:id])
    organ.assign_attributes(
                              name: params[:name],
                              price: params[:price],
                              image: params[:image],
                              description: params[:description]
                              )
    organ.save
    flash[:info] = "Item Updated"
    redirect_to "/organs/#{organ.id}"
  end

  def destroy
    organ = Organ.find(params[:id])
    organ.destroy
    flash[:danger] = "Item deleted. :("
    redirect_to "/organs/"
  end

end
