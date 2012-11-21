class CategoriesController < ApplicationController

  hobo_model_controller

  auto_actions :all
  
#  auto_actions_for :expense, :all
#  auto_actions_for :income, :all

  def create	
    hobo_create {@this = Income.new(:category => @category) if request.xhr?}
  end

  def create	
    hobo_create {@this = Expense.new(:category => @category) if request.xhr?}
  end

end
