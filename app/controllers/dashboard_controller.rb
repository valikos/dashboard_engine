# comment
class DashboardController < ApplicationController
  def index
    @articles = Article.all
    @locations = Location.all
    @ideas = Idea.all

    @articles_chart = Article.to_chart
    @locations_chart = Location.to_chart
    @ideas_chart = Idea.to_chart

    @dash_chart = []
    (1..7).each do |n|
      @dash_chart << {
        day: n.days.ago.strftime('%A'),
        articles: @articles_chart[n],
        ideas: @ideas_chart[n],
        locations: @locations_chart[n],
      }
    end

    @articles_chart.to_json
    @locations_chart.to_json
    @ideas_chart.to_json
  end
end
