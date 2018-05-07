class StudentsController < ApplicationController
    
    def add_student
       @users = User.where(status: 0)
    end
    
end
