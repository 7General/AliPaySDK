#
# Be sure to run `pod lib lint AlipaySDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AlipaySDK'
  s.version          = '0.0.1'
  s.summary          = '支付宝支付SDK,MS'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/wanghuizhou21@163.com/AlipaySDK'
  
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'wanghuizhou21@163.com' => 'wanghuizhou@guazi.com' }
  s.source           = { :git => 'https://github.com/wanghuizhou21@163.com/AlipaySDK.git', :tag => s.version.to_s }
  s.frameworks        = 'CoreTelephony', 'SystemConfiguration', 'CoreMotion'
  s.libraries         = 'z', 'c++'

  s.ios.deployment_target = '8.0'

  s.source_files = 'AlipaySDK/Classes/**/*'
  s.resources    = 'AlipaySDK/Boundles/AlipaySDK.bundle'
  s.vendored_frameworks = 'AlipaySDK/Frameworks/AlipaySDK.framework'
  


end
