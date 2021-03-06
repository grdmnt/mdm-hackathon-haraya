class StaticPagesController < ApplicationController
  def login
  end

  def explore
    @user = User.new
    @communities = Community.all
    @datasets = Dataset.all

    @entries = @communities + @datasets
    @entries.shuffle!
  end

  def dataset
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)
    html = markdown.render("This is *bongos*, indeed." * 100)
    @dataset = { name: 'Dataset Name', documentation: html, date_published: 'July 10, 2017', author: 'Je Marie Apolinario' }
  end

  def new_dataset
  end

  def update_dataset
  end

  def new_community
  end

  def community_datasets
  end
end
