class QualificationsController < ApplicationController
  before_action :set_product, only: [:edit, :update, :destroy]


  def new
    @qualification = Qualification.new
  end

  def create
    @qualification = Qualification.new(qualification_params)

    respond_to do |format|
      if @qualification.save
        format.html { redirect_to root_path, notice: 'Qualification was successfully created.' }
        format.json { render :index, status: :created, location: @qualification }
      else
        format.html { render :new }
        format.json { render json: @qualification.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @qualification = Qualification.find(params[:id])
  end

  def update
    respond_to do |format|
      if @qualification.update(qualification_params)
        format.html { redirect_to root_path, notice: 'Qualification was successfully updated.' }
        format.json { render :index, status: :ok, location: @qualification }
      else
        format.html { render :edit }
        format.json { render json: @qualification.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  end

private

def set_product
  @qualification = Qualification.find(params[:id])
end

def qualification_params
  params.require(:qualification).permit(:topic, :level, :grade)

  result =  params.require(:qualification).permit(:topic, :level, :grade)
  result
end

end
