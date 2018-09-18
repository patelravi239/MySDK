
Pod::Spec.new do |s|

 s.name              = 'MySDK'
    s.version           = '1.0.3'
    s.summary           = 'Your framework summary'
    s.homepage          = 'https://guideme.io/'

    s.author            = { 'Ravi' => 'patelravi239@gmail.com' }
    s.license           = 'MIT'

    s.platform          = :ios
    s.source            = { :git => 'https://github.com/patelravi239/MySDK.git', :tag => '1.0.3' }

    s.ios.deployment_target = '10.0'

    s.ios.vendored_frameworks = 'MySDK.framework'

  s.dependency 'Alamofire'

end
