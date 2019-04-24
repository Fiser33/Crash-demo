platform :ios, '11.0'
use_frameworks!

target 'Bond_test' do
    pod 'Bond', '6.10.3'
end

post_install do |installer|
  optimization = 'SWIFT_OPTIMIZATION_LEVEL'
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings[optimization] = '-O'
    end
  end
end
