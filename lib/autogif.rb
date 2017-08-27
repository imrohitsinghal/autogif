require 'pry'
require 'autogif/version'
require 'rmagick'
require 'fileutils'

module AutoGif

  class<<self

    attr_accessor  :root_directory, :image_directory, :delay , :platform , :image_name, :images_path

    def configure
      yield self
    end

    def current_platform
      AutoGif.const_get AutoGif.platform.capitalize
    end

  end
end

AutoGif.configure do |config|
  config.root_directory = "images"
  config.image_directory = nil
  config.platform = "default"
  config.delay = 180
  config.image_name = "screen_captured"
end