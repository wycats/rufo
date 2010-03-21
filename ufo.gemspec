# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "ufo"
  s.version = "0.6.0"
  s.platform = Gem::Platform::RUBY
  s.has_rdoc = true
  s.extra_rdoc_files = ["README.markdown", "LICENSE"]
  s.summary = "A gem that provides a Ruby binding to the Java flying saucer library"
  s.description = s.summary
  s.author = "Yehuda Katz"
  s.email = "wycats@gmail.com"
  s.homepage = "http://yehudakatz.com"

  s.require_path = 'lib'
  s.files = %w(LICENSE README.markdown Rakefile) + Dir.glob("{lib,specs}/**/*")
end
