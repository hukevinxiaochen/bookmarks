require "sinatra/base"
require 'liquid'

class Bookmarks < Sinatra::Base

  get '/' do
    # execute a shell command
    convert_markdown_to_html = "pandoc data/bookmarks.markdown -o data/output.html"
    system(convert_markdown_to_html)
    bookmarks = IO.read("data/output.html")

    liquid :index, :locals => { :bookmarks => bookmarks }
  end
end

