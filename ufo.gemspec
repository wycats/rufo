# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{ufo}
  s.version = "0.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Yehuda Katz"]
  s.autorequire = %q{ufo}
  s.date = %q{2009-07-14}
  s.default_executable = %q{make_pdf}
  s.description = %q{A gem that provides a Ruby binding to the Java flying saucer library}
  s.email = %q{wycats@gmail.com}
  s.executables = ["make_pdf"]
  s.extra_rdoc_files = ["README.markdown", "LICENSE"]
  s.files = ["LICENSE", "README.markdown", "Rakefile", "lib/flying_saucer", "lib/flying_saucer/core-renderer.jar", "lib/flying_saucer/itext-paulo-155.jar", "lib/flying_saucer/itext_renderer.rb", "lib/flying_saucer.rb", "bin/make_pdf"]
  s.homepage = %q{http://yehudakatz.com}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.4}
  s.summary = %q{A gem that provides a Ruby binding to the Java flying saucer library}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<thor>, [">= 0"])
    else
      s.add_dependency(%q<thor>, [">= 0"])
    end
  else
    s.add_dependency(%q<thor>, [">= 0"])
  end
end
