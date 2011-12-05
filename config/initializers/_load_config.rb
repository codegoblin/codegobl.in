module Codegoblin 
  class Config
    @@config = nil

    def self.[](key)
      (@@config ||= HashWithIndifferentAccess.new(
                      YAML.load_file(Rails.root.join('config/config.yml').to_s)
                    )[Rails.env])[key]
    end
  end
end
