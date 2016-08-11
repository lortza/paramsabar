class PagesController < ApplicationController

  before_action :set_list_items
  before_action :set_user

  def home
  end

  def about
    if params[:food] == "taco"
      @user = {name: "TACO ricksnakeman"}
    end
  end

  def contact
    if params[:taco] == "sauce"
      @list_items = ["YUMMY", "crunchy", "gooey"]
    elsif params[:kitty].present? && params[:kitty] != "sauce"
      @list_items = ["PC", "BEEF", "NOOCH"]
    end

  end

  private
  def set_list_items
    @list_items = ["Mindy", "Zorro", "Sunny", "Violet"]
  end #set_list_items

  def set_user
    @user = {id: 1, name: "ricksnakeman", food: "taco"}
  end #set_user
end
