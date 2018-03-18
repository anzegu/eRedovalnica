class SubjectsController < ApplicationController
    before_action :find_subject, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!
    
    def index
        @subjects = Subject.where(user_id: current_user)
    end
    
    def show
        @su = SubjectsUser.where(subject_id: @subject.id)
    end
    
    def new
        @subject = current_user.subjects.build
    end
    
    def create
        @subject = current_user.subjects.build(subject_params)
        @subject.user_id = current_user.id
        
        if @subject.save
            redirect_to @subject, notice: "Subject successfully added!"
        else
            render 'new'
        end
    end
    
    def update
       if @subject.update(subject_params)
           redirect_to @subject, notice: "Subject successfully updated!"
       else
           render 'new'
       end
    end
    
    def destroy
       @subject.destroy
       redirect_to subjects_path, notice: "Subject successfully deleted!"
    end
    
    private
    
    def find_subject
        @subject = Subject.find(params[:id])
    end
    
    def subject_params
       params.require(:subject).permit(:title, :description) 
    end
end
