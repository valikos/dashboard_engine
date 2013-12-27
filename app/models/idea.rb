# encoding: utf-8
# Idea model
#
class Idea < ActiveRecord::Base
  def self.last_week_activity
    where(created_at: 1.week.ago.midnight..DateTime.now.end_of_day)
  end

  def self.to_chart
    last_week_activity.each do |i|
      arr puts i
    end
  end
end
