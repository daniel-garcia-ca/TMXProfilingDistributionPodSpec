Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '12.0'
s.name = "TMXProfilingPod"
s.summary = "TMXProfilingPod Se crea pod de prueba con TMXProfiling.xcframework"
s.requires_arc = true

# 2
s.version = "0.0.1"

# 3
s.license = { :type => "MIT", :file => "LICENSE" }

# 4 - Reemplazar con su nombre y correo electrónico address
s.author = { "Daniel Garcia Castrejon" => "daniel.garcia@netpay.com.mx" }

# 5 - Reemplaza esta URL con la URL de tu propia página de GitHub (desde la barra de direcciones)
s.homepage = "https://github.com/daniel-garcia-ca/TMXProfilingDistributionPod"

# 6 - Reemplaza esta URL con tu propia URL de Git de"
s.source = { :git => "https://github.com/daniel-garcia-ca/TMXProfilingDistributionPod.git", :tag => "#{s.version}" }

#my-specs-tmx-profiling

# 7
s.swift_version ="5.4.2"

s.vendored_frameworks = "TMXProfiling.xcframework"


s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end
