require "sinatra/base"

class Bookmarks < Sinatra::Base
  get '/' do
    # execute a shell command
    convert_markdown_to_html = "pandoc data/bookmarks.markdown -o data/output.html"
    system(convert_markdown_to_html)
    IO.read("data/output.html")
  end
end

