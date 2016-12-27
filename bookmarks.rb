require "bundler/setup"

require "sinatra/base"
require "liquid"

require_relative "./auth"

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

  #----------------
  # TODO: Finish other items
  #
  # make Auth, the helper module
  #
  # with methods like:
  #
  # - has_valid_token?
  #
  # available for use in:
  #
  # - before filters
  ###helpers Auth
  ##----------
  # before filters
  #
  # I really want to know. Are you logged in?
  #
  # before do
  #
  ## With the help of Auth#has_valid_token?
    # We ask, "no really, are you logged in?"
    ## def logged_in?(cookies) 
    ##   return is_valid_token?(cookies["access_token"])
    ## end

    # Set it, and forget it. Except not really.
    #
    # See, we are going to pass this in our locals hash to our template.
    # 
    # Our template is going to have some conditional logic, as follows:
    # - if @authenticated == true, then include the Sync Button.
    # - if @authenticated != true, then don't serve that!
    ##@authenticated = logged_in?(request.cookies)
  # end
  #----------
   
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

  # get "/login" do
  #   token = get_valid_token
  #   headers "Set-Cookie" => "access_token=#{token}; HttpOnly"
  #   redirect back
  # end

  #-----------------
  # PROTECTED ROUTES
  #-----------------

  # ADMIN only
  # get "/admin/test" do
    # Only some trusted people in the world should be able to trigger the server
    # actions specified here.
  #  "For trusted people only."
  # end

