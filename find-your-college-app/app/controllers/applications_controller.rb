class ApplicationsController < ApplicationController

    def showapplication
        @student = Student.find(session[:student_id])
    end
end
