class SubjectsUsersController < ApplicationController
  before_action :set_subjects_user, only: [:show, :edit, :update, :destroy]

  # GET /subjects_users
  # GET /subjects_users.json
  def index
    @subjects_users = SubjectsUser.all
  end

  # GET /subjects_users/1
  # GET /subjects_users/1.json
  def show
  end

  # GET /subjects_users/new
  def new
    @subject = Subject.find(params[:subject_id])
    @subjects_user = SubjectsUser.new
  end

  # GET /subjects_users/1/edit
  def edit
  end

  # POST /subjects_users
  # POST /subjects_users.json
  def create
    @subjects_user = SubjectsUser.new(subjects_user_params)

    respond_to do |format|
      if @subjects_user.save
        format.html { redirect_to subjects_path(@subjects_user.subject_id), notice: 'Subjects user was successfully created.' }
        format.json { render :show, status: :created, location: @subjects_user }
      else
        format.html { render :new }
        format.json { render json: @subjects_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subjects_users/1
  # PATCH/PUT /subjects_users/1.json
  def update
    respond_to do |format|
      if @subjects_user.update(subjects_user_params)
        format.html { redirect_to @subjects_user, notice: 'Subjects user was successfully updated.' }
        format.json { render :show, status: :ok, location: @subjects_user }
      else
        format.html { render :edit }
        format.json { render json: @subjects_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subjects_users/1
  # DELETE /subjects_users/1.json
  def destroy
    @subjects_user.destroy
    respond_to do |format|
      format.html { redirect_to subjects_users_url, notice: 'Subjects user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subjects_user
      @subjects_user = SubjectsUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subjects_user_params
      params.require(:subjects_user).permit(:subject_id, :user_id) 
    end
end
