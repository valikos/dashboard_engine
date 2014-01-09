require 'spec_helper'

describe 'Dashboard Page' do
  before do
    @dashboard = Dashboard.new
    @dashboard.load
  end

  it 'contain dashboard text' do
    @dashboard.should have_content 'Dashboard#index'
  end

  it 'contain area for chart' do
    @dashboard.should have_chart
  end
end
