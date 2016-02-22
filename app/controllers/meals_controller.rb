class MealsController < ApplicationController
	
  def index
    respond_with Meal.all
  end
end
