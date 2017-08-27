
= AutoGif

Automated creation of gif for automated tests(Mobile and Web).

This can be used to create gif for a running automated test( Mobile or Web). This gif can then be embedded in your test reports.
Helps a lot while debugging failing tests or bug creation.

== Installation

Add this gem to your project's Gemfile. Add the below command to your Gemfile:

    gem 'autogif'

 And then execute below command from your terminal:

    $ bundle

Or install it yourself by running below command from your terminal:

    $ gem install autogif

== How to use it:

If you are using Cucumber in your project, then add the following to your env.rb:
  require 'autogif'

 For Android:
     a. AutoGif.root_directory = your project's root directory
     b. AutoGif.platform = :android

 For iOS:
     a. AutoGif.root_directory = your project's root directory
     b. AutoGif.platform = :ios

For taking/sending screenshots to this gem, add below method at the place where you want to take screeshots
(Eg. before click is performed, after click is performed etc..)

    store_screens(<name_of_screenshot>)

For creating gif, add the below method where you want gif should be created
(Eg. After scenario is executed, after scenario is failed, etc..)

    get_gif(<name_for_gif>)

For deleting screenshots that were taken to create gif, add the below method

   delete_screens

Note: Desired gif will be added to your project's root folder.

== Contributing to HelloGif

1. Fork it ( http://github.com/<my-github-username>/autogif/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request



== Copyright

Copyright (c) 2016 Rohit Singhal. See LICENSE.txt for
further details.