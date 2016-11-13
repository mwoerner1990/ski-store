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
    render 'create.html.erb'
  end

  def show
    @skis = Store.find_by(id: params[:id])
    render 'show.html.erb'
  end
end
