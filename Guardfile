# A sample Guardfile
# More info at https://github.com/guard/guard#readme

## Order Matters!

guard 'livereload' do
  watch(%r{app/views/.+\.(erb|haml|slim)$})
  watch(%r{app/helpers/.+\.rb})
  watch(%r{public/.+\.(css|js|html)})
  watch(%r{config/locales/.+\.yml})
  # Rails Assets Pipeline
  watch(%r{(app|vendor)(/assets/\w+/(.+\.(css|js|html))).*}) { |m| "/assets/#{m[3]}" }
end

guard 'bundler' do
  watch('Gemfile')
  # Uncomment next line if Gemfile contain `gemspec' command
  # watch(/^.+\.gemspec/)
end

guard 'minitest', :all_after_pass => false, :drb => true do
  # with Minitest::Unit
  # watch(%r|^test/(.*)\/?test_(.*)\.rb|)
  # watch(%r|^lib/(.*)([^/]+)\.rb|)     { |m| "test/#{m[1]}test_#{m[2]}.rb" }
  # watch(%r|^test/test_helper\.rb|)    { "test" }

  # with Minitest::Spec
  watch(%r|^spec/(.*)_spec\.rb|)
  watch(%r|^lib/(.*)([^/]+)\.rb|)     { |m| "spec/#{m[1]}#{m[2]}_spec.rb" }
  watch(%r|^spec/spec_helper\.rb|)    { "spec" }

  # Rails 3.2
  watch(%r|^app/controllers/(.*)\.rb|) { |m| "spec/controllers/#{m[1]}_test.rb" }
  watch(%r|^app/helpers/(.*)\.rb|)     { |m| "spec/helpers/#{m[1]}_test.rb" }
  watch(%r|^app/models/(.*)\.rb|)      { |m| "spec/unit/#{m[1]}_test.rb" }
  watch(%r|^app/views/(.*)/|)          { |m| "spec/requests/#{m[1]}_spec.rb"}
  
  # Rails
  # watch(%r|^app/controllers/(.*)\.rb|) { |m| "test/functional/#{m[1]}_test.rb" }
  # watch(%r|^app/helpers/(.*)\.rb|)     { |m| "test/helpers/#{m[1]}_test.rb" }
  # watch(%r|^app/models/(.*)\.rb|)      { |m| "test/unit/#{m[1]}_test.rb" }  
end

guard 'pow', :restart_on_start => true do
  watch('.powrc')
  watch('.powenv')
  watch('.rvmrc')
  watch('Gemfile')
  watch('Gemfile.lock')
  watch('config/application.rb')
  watch('config/environment.rb')
  watch(%r{^config/environments/.*\.rb$})
  watch(%r{^config/initializers/.*\.rb$})
end



