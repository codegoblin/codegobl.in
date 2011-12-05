unless Rails.env.production?
  module Codegoblin 
    class Config
      @@config = nil

      def self.[](key)
        (@@config ||= HashWithIndifferentAccess.new(YAML.load_file("#{Rails.root}/config/config.yml"))[Rails.env])[key]
      end
    end
  end
end
