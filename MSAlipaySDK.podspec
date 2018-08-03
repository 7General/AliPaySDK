#
# Be sure to run `pod lib lint MSAlipaySDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MSAlipaySDK'
  s.version          = '0.0.6'
  s.summary          = 'MSAlipaySDK From Alipay '

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/7General'
  
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'wanghuizhou21@163.com' => 'wanghuizhou@guazi.com' }
  s.source           = { :git => 'https://github.com/7General/AliPaySDK.git', :tag => s.version.to_s }

s.frameworks        = 'CoreTelephony', 'SystemConfiguration', 'CoreMotion'
s.libraries         = 'z', 'c++'

s.ios.deployment_target = '8.0'

s.source_files = 'MSAlipaySDK/Classes/**/*'
s.resources    = 'MSAlipaySDK/Boundles/AlipaySDK.bundle'
s.vendored_frameworks = 'MSAlipaySDK/Frameworks/AlipaySDK.framework'
end
