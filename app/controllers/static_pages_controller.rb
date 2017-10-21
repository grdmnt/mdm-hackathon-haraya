class StaticPagesController < ApplicationController
  def login
  end

  def dashboard
    @communities = ['transparencyPH', 'agriculture', 'medical-missions']
  end
end
