require 'sinatra'
require 'rtfm/documentation'

# A Sinatra application acting as the "index page" of the entire site.
# Most documentation is served as just regular HTML from the `public/`
# directory.

module RTFM
  class Application < Sinatra::Application
    # The index page, where we will actually perform the action of
    # finding directories in `/srv/pro/public` and rendering to the screen.
    get "/" do
      @apps = Documentation.all
      haml :index
    end
  end
end
