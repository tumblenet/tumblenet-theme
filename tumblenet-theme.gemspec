# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "tumblenet-theme"
  spec.version       = "0.0.0.1"
  spec.authors       = ["TumbleGamer"]
  spec.email         = ["tumblegamer@tumblenet.tk"]

  spec.summary       = %q{A a tumblenet theme for Jekyll. NOT DONE YET.}
  spec.homepage      = "https://github.com/tumblenet/tumblenet-theme"
  spec.license       = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files         = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^(assets|_(includes|layouts|sass)/|(LICENSE|README)((\.(txt|md|markdown)|$)))}i)
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }

  spec.post_install_message = <<-msg
-----------------------------------------------------
Thank you for installing Tumble Network Jekyll Theme!
-----------------------------------------------------
msg

  spec.add_runtime_dependency "jekyll", "~> 3.3"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
