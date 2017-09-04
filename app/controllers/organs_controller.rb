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
  end

  def show
    @organ = Organ.find(params[:id])
  end

end
