class StoriesController < ApplicationController

  get '/stories/new' do
    erb :new
  end

  post '/stories' do
    story = Story.new(params)
    story.save
    redirect "/stories/#{story.id}"
  end

end
