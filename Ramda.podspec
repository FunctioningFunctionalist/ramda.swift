Pod::Spec.new do |s|
  s.name             = 'Ramda'
  s.version          = '0.1.0'
  s.summary          = 'A practical functional library for Swift programmers.'

  s.description      = <<-DESC
Ramda emphasizes a purer functional style. Immutability and side-effect free functions are at the heart of its design philosophy. This can help you get the job done with simple, elegant code.Ramda functions are automatically curried. This allows you to easily build up new functions from old ones simply by not supplying the final parameters.The parameters to Ramda functions are arranged to make it convenient for currying. The data to be operated on is generally supplied last.
                       DESC

  s.homepage         = 'https://github.com/JustinGuedes/ramda.swift'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.authors           = 'Justin Guedes', 'Tyrone Avnit'
  s.source           = { :git => 'https://github.com/JustinGuedes/ramda.swift.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'Ramda/Classes/**/*'
  
end
