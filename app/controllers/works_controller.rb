class WorksController < ApplicationController
  before_action :set_product, only: [:edit, :update, :destroy]

  def new
    @work = Work.new
  end

  def create
    @work = Work.new(work_params)

    respond_to do |format|
      if @work.save
        format.html { redirect_to root_path, notice: 'Job was successfully created.' }
        format.json { render :show, status: :created, location: @work }
      else
        format.html { render :new }
        format.json { render json: @work.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_product
    @work = Work.find(params[:id])
  end

  def work_params
    params.require(:work).permit(:organisation, :role, :years, :tasks)

    result =  params.require(:work).permit(:organisation, :role, :years, :tasks)
    result
  end

end
