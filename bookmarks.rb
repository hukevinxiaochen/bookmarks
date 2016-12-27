require "bundler/setup"

require "sinatra/base"
require "liquid"

#----------
# Bookmarks, the modular Sinatra app
#
# I would like a web application please!
#----------
class Bookmarks < Sinatra::Base

  # Have these variables accessible to:
  #
  # - before filters 
  # - route blocks
  attr_accessor :authenticated
  
  before do
    request.host == "localhost" ? @authenticated = true : @authenticated = false
  end

  #----------
  # route blocks
  #
  # Provide some endpoints folks. Handle requests.
  #----------
  get "/" do
    
    # Enjoy writing in markdown, viewing in a browser.
    # - Why not use pandoc?
    convert_markdown_to_html = "pandoc data/bookmarks.markdown -o data/output.html"
    system(convert_markdown_to_html)

    # Sinatra understands and serves strings.
    bookmarks = IO.read("data/output.html") 

    liquid :index, :locals => { :bookmarks => bookmarks, 
                                :authenticated => @authenticated, 
                                :host => request.host }
  
  end
end

