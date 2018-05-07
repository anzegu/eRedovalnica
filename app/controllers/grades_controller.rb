class GradesController < ApplicationController
    before_action :subject_find
    
    def create
        @grade = @subject.grades.create(params[:grade].permit(:value, :description, :user_id))

        if @grade.save
            redirect_to subject_path(@subject), notice: "Grade added"
        else
            redirect_to subject_path(@subject), notice: "Error while adding grade"
        end
    end
    
    def edit
        @grade = Grade.find(params[:id])
    end
    
    def update
        @grade = @subject.grades.find(params[:id])
        if @grade.update(params[:grade].permit(:value, :description))
            redirect_to subject_path(@subject)
        else
            render 'edit'
        end
    end
    
    def destroy
        @grade = @subject.grades.find(params[:id])
        @grade.destroy
        
        redirect_to subject_path(@subject)
    end
    
    private
    
    def subject_find
        @subject = Subject.find(params[:subject_id])
    end

    
end
