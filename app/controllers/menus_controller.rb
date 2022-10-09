class MenusController < ApplicationController
  
  def index
    @menus = Menu.all
    @menu = Menu.new
  end
  
  def create
    @menu = Menu.new(menu_params)
    @menu.save
    redirect_to :index
  end
  
  def menu_params
    params.require(:menu).permit(:title,:body)
  end
end
