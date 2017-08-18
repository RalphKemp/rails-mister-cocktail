class IngredientsController < ApplicationController

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def destroy
    ingredient_to_destory = Ingredient.find(params[:id])
    ingredient_to_destory.destroy
    redirect_to cocktail_path
  end

end
