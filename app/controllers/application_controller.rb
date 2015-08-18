require "./config/environment"
require "./app/models/tweet"
configure do
  set :public_folder, "public"
  set :views, "app/views"
end
class ApplicationController < Sinatra::Base
  configure do
  set :public_folder, "public"
  set :views, "app/views"
end
  get "/" do
    jims_tweet = Tweet.new("jim", "I'm a steelers fan")
    sams_tweet = Tweet.new("sam", "I like the islanders")
    @all_tweets = Tweet.all
    
    erb :index
  end
  post "/new_tweet" do
    Tweet.new(params[:username], params[:message])
    @all_tweets = Tweet.all
    erb :index
  end
  
end
