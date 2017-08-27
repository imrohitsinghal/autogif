require_relative '../AutoGif'
include Magick
require 'pry'
require 'fileutils'

module AutoGif
  module GetGif

      $IMAGES=[]

    def store_screens screen_name
      AutoGif.image_name = screen_name
      if AutoGif.image_directory.eql?nil
        AutoGif.images_path = AutoGif.root_directory
        $IMAGES << AutoGif.images_path + "/" + screen_name
        puts "Images List: #{$IMAGES}"
      else
        AutoGif.images_path = AutoGif.image_directory
        $IMAGES << AutoGif.images_path + "/" + screen_name
      end
    end

    def get_gif name
      puts "Images List for gif: #{$IMAGES}"
      images = ImageList.new(*$IMAGES)
      images.delay = AutoGif.delay
      images.write("#{name}.gif")
      # AutoGif.current_platform::Remove.delete_screenshots
    end

    def delete_screens
      for image_name in $IMAGES
        FileUtils.rm_f ("#{image_name}")
      end
    end

  end
end



