# frozen_string_literal: true

Gem::Specification.new do |s|
  s.required_ruby_version = '>= 2.7.6'
  s.name                  = 'omniauth-printful'
  s.version               = '0.0.0'
  s.summary               = 'Printful strategy for OmniAuth'
  s.authors               = ['David English']
  s.email                 = 'davidenglishcodes@gmail.com'
  s.files                 = ['lib/omniauth-printful.rb']
  s.license               = 'MIT'
  s.add_runtime_dependency 'omniauth-oauth2', '>= 1.4.0'
  s.metadata['rubygems_mfa_required'] = 'true'
end
