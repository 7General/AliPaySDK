#
# Be sure to run `pod lib lint AlipaySDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MSAlipaySDK'
  s.version          = '0.0.1'
  s.summary          = '支付宝支付SDK,MS'

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

  s.source_files = 'AlipaySDK/Classes/**/*'
  s.resources    = 'AlipaySDK/Boundles/AlipaySDK.bundle'
  s.vendored_frameworks = 'AlipaySDK/Frameworks/AlipaySDK.framework'
  


end
