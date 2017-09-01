class OrgansController < ApplicationController
  def index
    @organs = Organ.all
  end

  def show
    @organ = Organ.find(params[:id])
  end

end
