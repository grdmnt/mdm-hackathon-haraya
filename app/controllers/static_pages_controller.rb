class StaticPagesController < ApplicationController
  def login
  end

  def dashboard
    @communities = ['transparencyPH', 'agriculture', 'medical-missions']
  end

  def dataset
  end
end
