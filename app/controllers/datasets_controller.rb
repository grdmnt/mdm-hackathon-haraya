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
    community = Community.find_by_name(params[:community_name])
    @dataset.community = community

    if current_user
      @dataset.user = current_user
    else
      render redirect_to '/users/sign_in'
    end
 
    if @dataset.save
      redirect_to @dataset
    else
      render 'new'
    end
  end
 
  def update
    @dataset = Dataset.find(params[:id])
    community = Community.find_by_name(params[:community_name])
    @dataset.community = community
 
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
      params.require(:dataset).permit(:name, :documentation, :private, :datafile)
    end
end
