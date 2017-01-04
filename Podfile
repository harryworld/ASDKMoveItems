# Uncomment this line to define a global platform for your project
platform :ios, '9.0'
use_frameworks!

target 'ASDKMoveItems' do

  pod 'AsyncDisplayKit', path: 'InternalPods/AsyncDisplayKit'

end

# Post pod install hook to set the Swift Version to use in build settings.
post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = '3.0'
        end
    end
end

