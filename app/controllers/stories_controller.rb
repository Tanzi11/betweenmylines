class StoriesController < ApplicationController

    get '/stories' do
      erb :"stories/new"
    end

    post '/stories' do
      story = story.new(params)
      story.save
      redirect "/stories/#{story.story_id}"
    end


end
