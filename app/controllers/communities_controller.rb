class CommunitiesController < ApplicationController
  def index
    @communities = Community.all
  end
 
  def show
    @community = Community.find_by(name: params[:identifier])
  end
 
  def new
    @community = Community.new
  end
 
  def edit
    @community = Community.find_by(name: params[:identifier])
  end
 
  def create
    @community = Community.new(community_params)
    community = Community.find_by_name(params[:community_name])
    @community.community = community

    if current_user
      @community.user = current_user
    else
      render redirect_to '/users/sign_in'
    end
 
    if @community.save
      redirect_to @community
    else
      render 'new'
    end
  end
 
  def update
    @community = Community.find_by(name: params[:identifier])
    community = Community.find_by_name(params[:community_name])
    @community.community = community
 
    if @community.update(community_params)
      redirect_to @community
    else
      render 'edit'
    end
  end
 
  def destroy
    @community = Community.find_by(name: params[:identifier])
    @community.destroy
 
    redirect_to communities_path
  end
 
  private
    def community_params
      params.require(:community).permit(:name, :documentation, :private, :datafile)
    end
end