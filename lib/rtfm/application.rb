require 'sinatra'
require 'haml'
require 'redcarpet'
require 'rtfm/documentation'

# A Sinatra application acting as the "index page" of the entire site.
# Most documentation is served as just regular HTML from the `public/`
# directory.

module RTFM
  class Application < Sinatra::Application
    # Look for files in ./public of this repo, not in the ./lib/rtfm
    # folder.
    set :public_folder, File.expand_path('./public')

    # The index page, where we will actually perform the action of
    # finding directories in `/srv/pro/public` and rendering to the screen.
    get "/" do
      @app_names = Documentation.all
      haml :index
    end
  end
end
