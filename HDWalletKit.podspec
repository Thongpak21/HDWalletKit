
Pod::Spec.new do |s|
  s.name             = 'HDWalletKit'
  s.version          = '0.1'
  s.summary          = 'HDWalletKit'

  s.homepage         = 'http://nextzy.me/'
  s.license      = 'Nextzy'
  s.author           = { 'Thongpak Pongsilathong' => 'thongpak21@gmail.com' }
  s.source       = { :git => 'https://github.com/Thongpak21/HDWalletKit.git',:tag => s.version.to_s}

  s.ios.deployment_target = '8.0'
  s.exclude_files = '**/AppDelegate.swift'

  s.framework  = 'UIKit'
  s.requires_arc = true
  s.default_subspec = 'All'
  s.subspec 'All' do |ss|
    ss.ios.dependency 'HDWalletKit/HDWalletKit'

    ss.dependency 'CryptoSwift'
  end

  s.subspec 'HDWalletKit' do |ss|
    ss.source_files  = 'HDWalletKit/**/*'
  end

end
