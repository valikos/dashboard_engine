# comment
class DashboardController < ApplicationController
  def index
    @articles = Article.all
    @locations = Location.all
    @ideas = Idea.all

    @articles_chart = Article.to_chart.to_json
    @locations_chart = Location.to_chart.to_json
    @ideas_chart = Idea.to_chart.to_json
  end
end
