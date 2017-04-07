class FiguresController < ApplicationController
  get '/figures/?' do
    erb :'/figures/index.html'
  end

  get '/figures/new/?' do
    erb :'/figures/new.html'
  end

  post '/figures/?' do
    @figure = Figure.create( params[:figure] )
    if !params[:title][:name].empty?
      @figure.titles << Title.find_or_create_by( params[:title] )
    end
    if !params[:landmark][:name].empty?
      @figure.landmarks << Landmark.find_or_create_by( params[:landmark] )
    end
    @figure.save
    redirect "/figures/#{ @figure.id }"
  end

  get '/figures/:id/?' do
    @figure = Figure.find( params[:id] )
    erb :'/figures/show.html'
  end

  get '/figures/:id/edit/?' do
    @figure = Figure.find( params[:id] )
    erb :'/figures/edit.html'
  end

  patch '/figures/:id/?' do
    @figure = Figure.find( params[:id] )
    @figure.update( params[:figure] )
    if !params[:title][:name].empty?
      @figure.titles << Title.find_or_create_by( params[:title] )
    end
    if !params[:landmark][:name].empty?
      @figure.landmarks << Landmark.find_or_create_by( params[:landmark] )
    end
    @figure.save
    redirect "/figures/#{ @figure.id }"
  end
end
