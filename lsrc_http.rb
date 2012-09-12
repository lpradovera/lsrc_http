require 'drb'

class LsrcHttp < Sinatra::Base
  get '/' do
    haml :index
  end

  get '/c2c' do
    haml :c2c
  end

  get '/events' do
    haml :events
  end

  post '/c2c' do
    counter = DRbObject.new nil, 'druby://127.0.0.1:9050'
    counter.dial(params[:num], '200')
    @from = params[:num]
    @to = '200'
    haml :c2c_call
  end
end
