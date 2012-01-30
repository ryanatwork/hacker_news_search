# -*- encoding: utf-8 -*-
require File.expand_path('../lib/hacker_news_search/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name        = 'hacker_news_search'
  gem.version     =  HackerNewsSearch::VERSION
  gem.author      = "Ryan Resella"
  gem.email       = 'ryan@codeforamerica.org'
  gem.homepage    = 'https://github.com/ryanatwork/hacker_news_search'
  gem.summary     = %q{Wrapper for the Hacker News Search API}
  gem.description = %q{Simple Ruby wrapper for the Hacker News Search API}

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{|f| File.basename(f)}
  gem.require_paths = ['lib']

  gem.add_development_dependency 'maruku'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'webmock'
  gem.add_development_dependency 'yard'
  gem.add_runtime_dependency 'faraday', '~> 0.7.4'
  gem.add_runtime_dependency 'faraday_middleware', '~> 0.8.4'
  gem.add_runtime_dependency 'hashie', '~> 1.2.0'
  gem.add_runtime_dependency 'multi_json', '~> 1.0.2'
  gem.add_runtime_dependency 'rash', '~> 0.3.0'
end
