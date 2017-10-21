class StaticPagesController < ApplicationController
  def login
  end

  def explore
    @communities = ['transparencyPH', 'agriculture', 'medical-missions']
  end

  def dataset
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)
    html = markdown.render("This is *bongos*, indeed." * 100)
    @dataset = { name: 'Dataset Name', documentation: html, date_published: 'July 10, 2017' }
  end

  def new_dataset
  end
end
