# -*- encoding: utf-8 -*-
# stub: omniauth-discord 1.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "omniauth-discord".freeze
  s.version = "1.2.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Dean Perry".freeze, "Ad\u00E3o Raul".freeze]
  s.date = "2024-03-02"
  s.description = "Discord OAuth2 Strategy for OmniAuth".freeze
  s.email = ["dean@deanpcmad.com".freeze, "adao.raul@gmail.com".freeze]
  s.homepage = "https://github.com/deanpcmad/omniauth-discord".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.4.22".freeze
  s.summary = "Discord OAuth2 Strategy for OmniAuth".freeze

  s.installed_by_version = "3.5.20".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<omniauth-oauth2>.freeze, ["~> 1.6".freeze])
end
