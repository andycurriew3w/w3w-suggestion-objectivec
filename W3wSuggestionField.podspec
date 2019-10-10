
Pod::Spec.new do |s|
  s.name             = 'W3wSuggestionField'
  s.version          = '1.0.3'
  s.summary          = 'w3w-suggestion-objectivec allows you integrate w3w autosuggest  uitextfield component with storyboard'
  s.homepage         = 'https://github.com/selvaw3w/w3w-suggestion-swift.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.authors          = { "what3words" => "support@what3words.com" }
  s.source           = { :git => 'https://github.com/selvaw3w/w3w-suggestion-objectivec.git', :tag => s.version }
  s.ios.deployment_target = '10.0'
  s.requires_arc = true
  s.source_files = 'Sources/*.{h,m}'
  s.frameworks = 'UIKit'
  s.resource = 'Sources/images.xcassets'

end
