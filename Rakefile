task default: %w[push_data]

# If I edit my bookmarks on my private computer, I should be able to update the server.
task :push_data do
  sh "rsync -av data #{ENV['BOOKMARKS_REMOTE_REPO_DIR']}"
end

task :pull_data do
  sh "rsync -av #{ENV['BOOKMARKS_REMOTE_REPO_DIR']}/data/ data"
end

task :bundle_up do
  sh "bundle install --standalone=default"
end

