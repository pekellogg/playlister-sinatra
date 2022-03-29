class GenresController < ApplicationController
    # MVP:
    # show all genres in lib
    # each genre should be a link to its show page
    get '/genres' do
        @genres = Genre.all
        erb :'/genres/index'
    end

    get '/genres/new' do
        erb :'/genres/new'
    end

    # MVP
    # each genre's show page should contain links to its artist and song
    get '/genres/:slug' do
        @genre = Genre.find_by_slug(params["slug"])
        erb :'/genres/show'
    end
end
