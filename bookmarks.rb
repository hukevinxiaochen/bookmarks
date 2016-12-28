require "bundler/setup"

require "sinatra/base"
require "rdiscount"
require "haml"

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
    md = RDiscount.new(File.read("data/bookmarks.markdown"))
    bookmarks = md.to_html 

    haml :index, :locals => { :bookmarks => bookmarks, 
                                :authenticated => @authenticated, 
                                :host => request.host }
  
  end
end

