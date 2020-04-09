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
      if @homepage_dataset.update(homepage_params)
        format.html { redirect_to root_path, notice: 'Homepage was successfully updated.' }
        format.json { render :index, status: :ok, location: @homepage_dataset }
      else
        format.html { render :edit }
        format.json { render json: @homepage_dataset.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_homepage_items
    @homepage_dataset = HomePage.first
  end

  def homepage_params
    params.require(:home_page).permit(:title, :about_me)

    result =  params.require(:home_page).permit(:title, :about_me)
    result
  end

end
