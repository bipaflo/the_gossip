require'bundler'
Bundler.require

class ApplicationController <  Sinatra :Base
  get '/' do
    erb :index

  end
  get '/' do
    erb :new_gossip
  end
  post '/gossips/new/' do
  Gossip.new(@author,@content).save
  end



end
