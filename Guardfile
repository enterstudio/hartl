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

# Add files and commands to this file, like the example:
#   watch(%r{file/path}) { `command(s)` }

guard 'shell' do
  watch(%r|^app/views/(.*)/.*\.erb|) do |m|
    system('terminal-notifier-notify -message "Check Terminal for Results" -title "Spring is Running View Tests"')
    system("spring test test/views/#{m[1]}_test.rb")
  end 
  watch(%r|^app/controllers/(.*)/.*\.erb|) do |m|
    system('terminal-notifier-notify -message "Check Terminal for Results" -title "Spring is Running Controller Tests"')
    system("spring test test/controllers/#{m[1]}_test.rb")
  end 
  watch(%r|^app/helpers/(.*)/.*\.erb|) do |m|
    system('terminal-notifier-notify -message "Check Terminal for Results" -title "Spring is Running Helper Tests"')
    system("spring test test/helpers/#{m[1]}_test.rb")
  end 
  watch(%r|^app/models/(.*)/.*\.erb|) do |m|
    system('terminal-notifier-notify -message "Check Terminal for Results" -title "Spring is Running Model Tests"')
    system("spring test test/models/#{m[1]}_test.rb")
  end 
  watch(%r|^test/(.*)/(.*)\.rb|) do |m|
    system('terminal-notifier-notify -message "Check Terminal for Results" -title "Spring is Running Testfile Tests"')
    system("spring test test/#{m[1]}/#{m[2]}.rb")
  end
end

guard 'bundler' do
  watch('Gemfile')
  # Uncomment next line if Gemfile contain `gemspec' command
  # watch(/^.+\.gemspec/)
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

