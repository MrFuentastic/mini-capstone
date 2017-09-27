class OrgansController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :show]

  def index

    if params[:search]
      @organs = Organ.search(params[:search])
    else
      @organs = Organ.all
      sort_attribute = params[:sort]
      sort_direction = params[:dir]
      category_id = params[:cat]
      discount = params[:disc]
      if discount
        @organs = @organs.where("price < ?", discount)
      end

      if category_id
        category = Category.find_by(id: category_id)
        @organs = category.organs
      end

      if sort_attribute
        @organs = @organs.order(sort_attribute => sort_direction)
      end
    end
  end

  def new
    @suppliers = Supplier.all    
  end

  def create
    organ = Organ.new(
                      name: params[:name],
                      price: params[:price],
                      description: params[:description],
                      supplier_id: params[:supplier_id]
                      )
    organ.save
    image = Image.new(
                        url: params[:url],
                        organ_id: organ.id
                        )

    image.save
    flash[:success] = "Item Added"
    redirect_to "/organs"
  end

  def show    
    @organ = Organ.find(params[:id])
  end

  def edit    
    @suppliers = Supplier.all    
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
