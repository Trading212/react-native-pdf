require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name           = package['name']
  s.version        = package['version']
  s.summary        = package['summary']
  s.license        = package['license']

  s.author         = package['author']['name']
  s.homepage       = package['homepage']
  s.platform       = :ios, '9.0'

  s.source         = { :git => 'https://github.com/Trading212/react-native-pdf.git', :tag => "v#{s.version}" }
  s.source_files   = 'ios/**/*.{h,m}'
  s.requires_arc   = true

  s.dependency     'React-Core'
  s.dependency     'react-native-blob-util', "0.13.10"
end
