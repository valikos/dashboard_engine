# comment
class DashboardController < ApplicationController
  def index
    @articles = Article.all
    @locations = Location.all
    @ideas = Idea.all
  end
end
