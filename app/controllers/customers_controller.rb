class CustomersController < ApplicationController
  before_action :set_categories
  
  def index
    @books = Book.all
  end

  private
    def set_categories
      @categories = Category.all.order(:name)
    end
end