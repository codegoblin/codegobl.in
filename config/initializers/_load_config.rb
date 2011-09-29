# TODO: Gracefully error out if there is no config.yml
module Codegoblin 
  class Config
    @@config = nil

    def self.[](key)
      (@@config ||= HashWithIndifferentAccess.new(YAML.load_file("#{Rails.root}/config/config.yml"))[Rails.env])[key]
    end
  end
end
