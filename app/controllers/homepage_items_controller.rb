class HomepageItemsController < ApplicationController
  def index
    @homepage_dataset = HomePage.first
  end

  def new
  end

  def edit
    @homepage_data = HomePage.find(1)
  end

  def create
  end

  def delete
  end

  def update
    @homepage_data = HomePage.find(1)
  end
end
