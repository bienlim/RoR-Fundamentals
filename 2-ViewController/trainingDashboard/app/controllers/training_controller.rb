class TrainingController < ApplicationController
  def index
    @train = Training.all
  end

  def new 
  end

  def create
    @training = Training.create(training_params)
    redirect_to '/'
  end

  
  def show
    @training = Training.find(params[:id])
    @graduates = Training.find(params[:id]).graduates
  end
  def edit
    @training = Training.find(params[:id])
  end

  def update
    @training = Training.find(params[:id]).update(training_params)
    redirect_to '/'
  end
  def destroy
    @training = Training.find(params[:id]).destroy
    redirect_to '/'
  end

  private
    def training_params
      params.require(:training).permit(:batch,:start,:end)
      
    end
end
