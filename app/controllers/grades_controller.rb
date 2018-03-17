class GradesController < ApplicationController
    
    def create
        @subject = Subject.find(params[:subject_id])
        @grade = @subject.grades.create(params[:grade].permit(:value, :description, :user_id))

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
