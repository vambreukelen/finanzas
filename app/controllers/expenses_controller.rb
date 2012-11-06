class ExpensesController < ApplicationController

  hobo_model_controller

  auto_actions :all

  auto_actions_for :category, :create

  def diferencia 
    @dif = 1000
    
  end
end
