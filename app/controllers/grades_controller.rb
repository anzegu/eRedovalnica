class GradesController < ApplicationController
    
    def create
        @subject = Subject.find(params[:subject_id])
        @user = SubjectsUser.where(subject_id: @subject.id)
        @grade = @subject.grade.create(params[:grade].permit(:value, :description))
        @grade.user_id = @user.id
        
        if @grade.save
            redirect_to subject_path(@subject), notice: "Grade added"
        else
            redirect_to subject_path(@subject), notice: "Error while adding grade"
        end
    end
    
    def update
        
    end
    
    def delete
        
    end
    
end
