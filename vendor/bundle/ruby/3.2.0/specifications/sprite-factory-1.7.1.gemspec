# -*- encoding: utf-8 -*-
# stub: sprite-factory 1.7.1 ruby lib

Gem::Specification.new do |s|
  s.name = "sprite-factory".freeze
  s.version = "1.7.1".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jake Gordon".freeze]
  s.date = "2015-09-09"
  s.description = "Combines individual images from a directory into a single sprite image file and creates an appropriate CSS stylesheet".freeze
  s.email = ["jake@codeincomplete.com".freeze]
  s.executables = ["sf".freeze]
  s.extra_rdoc_files = ["README.md".freeze]
  s.files = ["README.md".freeze, "bin/sf".freeze]
  s.homepage = "https://github.com/jakesgordon/sprite-factory".freeze
  s.rdoc_options = ["--charset=UTF-8".freeze]
  s.rubygems_version = "2.4.5".freeze
  s.summary = "Automatic CSS sprite generator".freeze

  s.installed_by_version = "3.5.20".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_development_dependency(%q<rmagick>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<chunky_png>.freeze, [">= 0".freeze])
end
