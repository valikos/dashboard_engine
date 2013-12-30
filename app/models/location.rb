# encoding: utf-8
# Location
#
class Location < ActiveRecord::Base
  def self.last_week_activity
    where(created_at: 1.week.ago.midnight..DateTime.now.end_of_day)
  end

  def self.to_chart
    activity = []

    8.times do |t|
      start_of_day = 1.week.ago.midnight + t.day
      end_of_day = 1.week.ago.end_of_day + t.day

      activity << where(created_at: start_of_day..end_of_day).count
    end

    activity
  end
end
