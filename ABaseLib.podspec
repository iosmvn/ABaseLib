#
# Be sure to run `pod lib lint ABaseLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s| 
  s.name             = 'ABaseLib'
  s.version          = '0.0.3'
  s.summary          = 'ABaseLib.2018'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  ABaseLib DESC  -[占位内容] 在iOS开发中，事实标准是我们使用CocoaPods生成、管理和使用library。这里的library就是一个模块、组件或库。二进制化指的是通过编译把组件的源码转换成静态库或动态库，以提高该组件在App项目中的编译速度。
                       DESC

  s.homepage         = 'https://github.com/iosmvn/ABaseLib'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'sundl1988@163.com' => 'sundl1988@163.com' }
  s.source           = { :git => 'https://github.com/iosmvn/ABaseLib.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  if ENV['src']
      puts "源码模式"
      s.source_files = 'ABaseLib/Classes/**/*'
  else
      puts "framework模式"
      s.vendored_frameworks = "Carthage/Build/iOS/ABaseLib.framework"
  end
  
  s.resource_bundles = {
    'ABaseLib' => ['ABaseLib/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  s.dependency 'Masonry', '~> 1.1.0'
  
end
