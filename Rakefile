task default: %w[build_react_components]

task :build_react_components do
  sh "browserify -t [ babelify ] public/view.js -o public/app-bundle.js"
end

# TODO: Turn this into a protected API endpoint
# TODO: - If I edit my bookmarks on my private computer, I should be able to update the server.
task :push_data do
  sh "rsync -av data khu@hukev.com:/home/khu/bookmarks"
end

task :bundle_up do
  sh "bundle install --standalone=default"
end

# Pull from server to local
# `rsync -anv khu@hukev.com:/home/khu/bookmarks/data/ data`

