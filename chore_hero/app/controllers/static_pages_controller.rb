class StaticPagesController < ApplicationController
  
  def home
  end

  def charts
  end

  def about
    @twitter = Twitter::REST::Client.new do |config|
      config.consumer_key = ENV['consumer_key']
      config.consumer_secret = ENV['consumer_secret']
      config.access_token = ENV['access_token']
      config.access_token_secret = ENV['access_token_secret']
    end
  end

  def faq
  end
end
