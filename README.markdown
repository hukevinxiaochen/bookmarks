# Bookmarks project

# Deploy

`rbenv install 2.1.5`

`rake bundle_up`

Install [pandoc](http://www.pandoc.org/installing.html).

`mkdir data`

`touch data/bookmarks.markdown`

# Update the remote bookmarks server

`rake push_data`

This rake task, written up in Rakefile, depends on an environment variable that I set locally on my personal computer. Check out the profile file for the shell for this.

# Tests

TODO:

* when a liquid object does not exist, liquid template still renders
* empty locals hash is okay

