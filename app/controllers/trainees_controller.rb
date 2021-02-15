class TraineesController < ApplicationController
  def index
    @trainees = Trainee.all
  end

  def new
    @trainee = Trainee.new
  end

  def create
    @trainee = Trainee.new(trainee_params)
      if @trainee.save
        redirect_to trainees_path
      else
        render :new
      end  
  end

  def show
    @trainee = Trainee.find(params[:id])
  end  

  def edit
    @trainee = Trainee.find(params[:id])
  end

  def update
    @trainee = Trainee.find(params[:id])
      if @trainee.update(trainee_params)
        redirect_to trainees_path
      else
        render :edit
      end  
  end
    
  def delete
    @trainee = Trainee.find(params[:id])
    @trainee.destroy
    redirect_to trainees_path
  end  
    

  private
    def trainee_params
      params.require(:trainee).permit(:firstname, :lastname, :username, :password, :city, :country, :phone, :bio, :preference, :email, :github, :linkedin, :twitter)
    end
  end  
