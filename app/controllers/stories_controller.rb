class StoriesController < ApplicationController
#create
    get '/stories/new' do
      erb :"stories/new"
    end

    post '/stories' do
      story = Story.new(params)
      story.save
      redirect "/stories/#{story.id}"
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
#update
    get '/stories/:id/edit' do
      @stories = Story.find_by(params[:story_id])
      erb :"stories/edit_story"
    end

    patch '/stories/:id' do
      @story = Article.find_by(params[:story_id])
      @story.title = params[:title]
      @story.description = params[:description]
      @story.save
      redirect to "/stories/#{@story.id}"
    end
#delete
    delete '/stories/:id/delete' do
      @story = Story.find_by(params[:story_id])
      @story.delete
      redirect "/stories"
    end
end
