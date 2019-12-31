require 'digest/sha1'

class StudentsController < ApplicationController

def welcome
end

def signin
end

def after_signin
    @student = Student.find_by(username: params[:username])
    if @student.valid?
        session[:student_id] = @student.id
    redirect_to home_path
    else flash[:messages] = @student.errors.full_messages
        redirect_to signin_path
    end
end 

def home
    @student = Student.find(session[:student_id])
end

def signout
    reset_session
    flash[:info] = "Signed out suuccessfully!"
    redirect_to root_path
end

def new
    @student = Student.new
end

def create
    @student = Student.create(student_params)
    if @student.valid? 
        session[:student_id] = @student.id
    redirect_to home_path
    else flash[:messages] = @student.errors.full_messages
        redirect_to new_student_path
    end
end

def edit
    @student = Student.find(params[:id])
end

def update
    @student = Student.update(params[:id], student_params)
    if @student.valid? 
        redirect_to home_path
        else flash[:messages] = @student.errors.full_messages
            redirect_to edit_student_path
        end
end

def destroy
    reset_session
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to root_path
end

def search 
    @student = Student.find(session[:student_id])
    @activities = Activity.all
end



private

def student_params
    params.require(:student).permit(:name, :GPA, :high_school, :username)
end

end
