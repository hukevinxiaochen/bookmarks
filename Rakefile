task default: %w[build_react_components]

task :build_react_components do
  sh "browserify -t [ babelify ] public/view.js -o public/app-bundle.js"
end

