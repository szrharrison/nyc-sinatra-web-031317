class ApplicationController < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }
  register Sinatra::Twitter::Bootstrap::Assets

  def all_landmarks
    Landmark.all
  end

  def all_figures
    Figure.all
  end

  def all_titles
    Title.all
  end
end
