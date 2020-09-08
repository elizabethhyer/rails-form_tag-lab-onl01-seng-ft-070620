require 'pry'

class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end 

  def create 
    Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    # session[:form_params] = params.inspect
    # binding.pry
    redirect_to students_path
  end 

end
