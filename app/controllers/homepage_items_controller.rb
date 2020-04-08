class HomepageItemsController < ApplicationController
  before_action :set_homepage_items, only: [:edit, :update, :index]
  def index
    @homepage_dataset = HomePage.first
  end

  def new
  end

  def edit
    @homepage_dataset = HomePage.first
  end

  def create
  end

  def delete
  end

  def update
    respond_to do |format|
      if @homepage_data.update(homepage_data_params)
        format.html { redirect_to root_path, notice: 'Homepage was successfully updated.' }
        format.json { render :index, status: :ok, location: @homepage_data }
      else
        format.html { render :edit }
        format.json { render json: @homepage_data.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_homepage_items
    @homepage_data = HomePage.first
  end

end
