class WorksController < ApplicationController
  before_action :set_work, only: [:edit, :update, :destroy]

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
    @work = Work.find(params[:id])

  end

  def update
    respond_to do |format|
      if @work.update(work_params)
        format.html { redirect_to root_path, notice: 'Job was successfully updated.' }
        format.json { render :index, status: :ok, location: @job }
      else
        format.html { render :edit }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @work.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Job was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_work
    @work = Work.find(params[:id])
  end

  def work_params
    params.require(:work).permit(:organisation, :role, :years, :tasks)

    result =  params.require(:work).permit(:organisation, :role, :years, :tasks)
    result
  end

end
