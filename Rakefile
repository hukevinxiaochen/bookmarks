task default: %w[push_data]

# If I edit my bookmarks on my private computer, I should be able to update the server.
task :push_data do
  sh "rsync -av data #{ENV['BOOKMARK_REMOTE_REPO_DIR']}"
end

task :bundle_up do
  sh "bundle install --standalone=default"
end

# Pull from server to local
# `rsync -anv khu@hukev.com:/home/khu/bookmarks/data/ data`

