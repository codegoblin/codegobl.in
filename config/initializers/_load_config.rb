config_filename = (Rails.env.production? ? "config.example.yml" : "config.yml")
module Codegoblin 
  class Config
    @@config = nil

    def self.[](key)
      (@@config ||= HashWithIndifferentAccess.new(YAML.load_file(Rails.root.join('/config/', config_filename).to_s))[Rails.env])[key]
    end
  end
end
