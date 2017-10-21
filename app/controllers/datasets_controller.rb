class DatasetsController < ApplicationController
  def index
    @datasets = Dataset.all
  end
 
  def show
    @dataset = Dataset.find(params[:id])
  end
 
  def new
    @dataset = Dataset.new
  end
 
  def edit
    @dataset = Dataset.find(params[:id])
  end
 
  def create
    @dataset = Dataset.new(dataset_params)
 
    if @dataset.save
      redirect_to @dataset
    else
      render 'new'
    end
  end
 
  def update
    @dataset = Dataset.find(params[:id])
 
    if @dataset.update(dataset_params)
      redirect_to @dataset
    else
      render 'edit'
    end
  end
 
  def destroy
    @dataset = Dataset.find(params[:id])
    @dataset.destroy
 
    redirect_to datasets_path
  end
 
  private
    def dataset_params
      params.require(:dataset).permit(:name, :documentation, :datafile)
    end
end
