class CommunitiesController < ApplicationController
  def index
    @communities = Community.all
  end
 
  def show
    @community = Community.find_by(name: params[:identifier])
  end

  def members
    @community = Community.find_by(name: params[:identifier])
  end
 
  def new
    @community = Community.new
  end

  def join
    @community = Community.find_by(name: params[:identifier])
    current_user.memberships.create(community: @community)
    redirect_to @community
  end
 
  def edit
    @community = Community.find_by(name: params[:identifier])
  end
 
  def create
    @community = Community.new(community_params)

    if current_user
      current_user.memberships.create(community: @community)
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
      params.require(:community).permit(:name, :description)
    end
end
