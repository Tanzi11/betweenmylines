class StoriesController < ApplicationController
#create
    get '/stories/new' do
      erb :"stories/new"
    end

    post '/stories' do
      story = Story.new(params)
      story.save
      redirect "/stories/#{story.story_id}"
    end

#read
    get '/stories' do
      @stories = Story.all
      erb :"stories/stories"
    end

    get '/stories/:id' do
      @story = Story.find_by(params[:story_id])
      erb :"stories/show_story"
    end

end
