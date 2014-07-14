class RecipesController < ApplicationController
  def index
	  @food = params[:keyword] || 'chocolate'
	   output = Recipe.for @food
	   @recs = output["results"]
  end
end
