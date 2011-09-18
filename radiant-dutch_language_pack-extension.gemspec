# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "radiant-dutch_language_pack-extension"

Gem::Specification.new do |s|
  s.name        = "radiant-dutch_language_pack-extension"
  s.version     = RadiantDutchLanguagePackExtension::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = RadiantDutchLanguagePackExtension::AUTHORS
  s.email       = RadiantDutchLanguagePackExtension::EMAIL
  s.homepage    = RadiantDutchLanguagePackExtension::URL
  s.summary     = RadiantDutchLanguagePackExtension::SUMMARY
  s.description = RadiantDutchLanguagePackExtension::DESCRIPTION

  ignores = if File.exist?('.gitignore')
    File.read('.gitignore').split("\n").inject([]) {|a,p| a + Dir[p] }
  else
    []
  end
  s.files         = Dir['**/*'] - ignores
  s.test_files    = Dir['test/**/*','spec/**/*','features/**/*'] - ignores
  # s.executables   = Dir['bin/*'] - ignores
  s.require_paths = ["lib"]
end
