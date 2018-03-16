#
# Be sure to run `pod lib lint GSAlertView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'GSAlertView'
  s.version          = '1.0.0'
  s.summary          = 'A Flexible Custom Alert View'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  'As, UIAlertView doesnt give you much of customization, so we bring a Custom Alert View which has lots of customization'
                       DESC

  s.homepage         = 'https://github.com/greenSyntax/GSAlertView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'greenSyntax' => 'ab.abhishek.ravi@gmail.com' }
  s.source           = { :git => 'https://github.com/greenSyntax/GSAlertView.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/greenSyntax'

  s.ios.deployment_target = '8.0'

  s.source_files = 'GSAlertView/Classes/**/*'
  
  # s.resource_bundles = {
  #   'GSAlertView' => ['GSAlertView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
