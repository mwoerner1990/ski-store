class SkisController < ApplicationController
  def index
    @skis = Store.all
    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    ski = Store.new(name: params[:name],
      price: params[:price],
      image: params[:image],
      description: params[:description]
      )
    ski.save
    # render 'create.html.erb'
    flash[:success] = "Congrats! Created successfully!"
    redirect_to '/skis'
  end

  def edit
    @ski = Store.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    ski = Store.find_by(id: params[:id])
    ski.name = params[:name]
    ski.price = params[:price]
    ski.image = params[:image]
    ski.description = params[:description]
    ski.save
    # render 'update.html.erb'
    flash[:success] = "Congrats! Updated successfully!"
    redirect_to "/skis/#{ski.id}"
  end

  def show
    @ski = Store.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def destroy
    @ski = Store.find_by(id: params[:id])
    @ski.destroy
    # render 'destroy.html.erb'
    flash[:success] = "Congrats! Item deleted successfully!"
    redirect_to "/skis"
  end
end
