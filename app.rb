require_relative 'config/environment'


class App < Sinatra::Base
    set :views, settings.root + '/4:26-4:30/sinatra-mvc-lab/views'

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        pl = PigLatinizer.new
        @piglatin = pl.piglatinize(params[:user_phrase])
        erb :results
    end
end
