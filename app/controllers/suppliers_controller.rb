class SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.order(params[:sort_by])
    if params[:sort_by] == "discounted"
      @suppliers = Supplier.where("price < ?", 600) 
    end
    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    supplier = Supplier.new(name: params[:name],
      email: params[:email],
      phone: params[:phone],
      )
    supplier.save
    # render 'create.html.erb'
    flash[:success] = "Congrats! Created successfully!"
    redirect_to '/suppliers'
  end

  def edit
    @supplier = Supplier.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    supplier = Supplier.find_by(id: params[:id])
    supplier.name = params[:name]
    supplier.email = params[:email]
    supplier.phone = params[:phone]
    supplier.save
    # render 'update.html.erb'
    flash[:success] = "Congrats! Updated successfully!"
    redirect_to "/supplier/#{supplier.id}"
  end

  def show
    @supplier = Supplier.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def destroy
    @supplier = Supplier.find_by(id: params[:id])
    @supplier.destroy
    # render 'destroy.html.erb'
    flash[:success] = "Congrats! Supplier deleted successfully!"
    redirect_to "/suppliers"
  end
end
