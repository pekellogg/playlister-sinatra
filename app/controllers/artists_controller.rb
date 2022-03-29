class ArtistsController < ApplicationController
    # MVP:
    # show all artists in lib
    # each artist should be a link to its show page
    get '/artists' do
        @artists = Artist.all
        erb :'/artists/index'
    end

    get '/artists/new' do
        erb :'/artists/new'
    end

    # MVP
    # each artist's show page should contain links to its songs and genres
    get '/artists/:slug' do
        @artist = Artist.find_by_slug(params["slug"])
        erb :'/artists/show'
    end
end
