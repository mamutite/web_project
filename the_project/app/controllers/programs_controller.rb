class ProgramsController < ApplicationController
  def index
    @programs = Program.all
  end

  def new
    @program = Program.new
  end

  def create
    program = Program.new(program_params)
    if program.save
      redirect_to programs_path
    else
      redirect_to new_program_path
    end
  end

  def destroy
    @program = Program.find(params[:id])
    @program.destroy
    redirect_to programs_path
  end

private
  def program_params
    params.require(:program).permit(:name, :description, :image, :document)
  end
end
