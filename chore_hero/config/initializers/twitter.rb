if Rails.env.development?
 begin
   settings_config = YAML.load_file('config/twitter.yml')
   settings_config.each {|key, value| ENV[key] = value}
 rescue
   raise "twitter.yml not found in config directory"
 end
end



