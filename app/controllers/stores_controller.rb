class StoresController < ApplicationController
  # def first_product_method
  #   @product = Store.first
  #   render 'atomic_vantage.html.erb'
  # end

  # def second_product_method
  #   @product = Store.second
  #   render 'soulseven.html.erb'
  # end

  # def third_product_method
  #   @product = Store.third
  #   render 'lineSFB.html.erb'
  # end
  def index
    @skis = Store.all
    render 'skis.html.erb'
  end
end
