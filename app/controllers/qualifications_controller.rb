class QualificationsController < ApplicationController
  def new
    @qualification = Qualification.new
  end

  def create
    @qualification = Qualification.new(qualification_params)

    respond_to do |format|
      if @qualification.save
        format.html { redirect_to root_path, notice: 'Qualification was successfully created.' }
        format.json { render :show, status: :created, location: @qualification }
      else
        format.html { render :new }
        format.json { render json: @qualification.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

private

def qualification_params
  params.require(:qualification).permit(:topic, :level, :grade)

  result =  params.require(:qualification).permit(:topic, :level, :grade)
  result
end

end
