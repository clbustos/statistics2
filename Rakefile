#!/usr/bin/ruby
# -*- ruby -*-

require 'rubygems'
require 'hoe'
require 'rake/extensiontask'
require 'lib/statistics2/version'


EXT="lib/statistics2.so"

hoe_spec=Hoe.spec 'statistics2' do
  developer 'Brendan Ribera', 'brendan.ribera@gmail.com'
  developer 'Shin-ichiro Hara', 'sinara@blade.nagaokaut.ac.jp'
  self.version      = Statistics2::VERSION
  self.spec_extras[:extensions] = FileList["ext/**/extconf.rb"]
  self.readme_file  = 'README.rdoc'
  self.history_file = 'History.rdoc'
  self.url          = 'http://github.com/abscondment/statistics2'
  self.summary      = 'Statistical Distributions for Ruby. Based on Shin-ichiro Hara\'s original library, updated for Ruby 1.9'
  self.description  = 'Statistics2 is a module that provides normal, Chi-square, t- and F- probability distributions for Ruby. It is a fork/continuation of Shin-ichiro Hara\'s original code. It provides a native, compiled extension and a pure Ruby implementation.'
  self.extra_deps  << ["rake-compiler"]
  # C extension goodness
  self.clean_globs << 'ext/statistics2/*.so' << 'ext/statistics2/*.o' << 'ext/statistics2/Makefile'
end

desc "Prepare for github upload"

Rake::ExtensionTask.new('statistics2',hoe_spec.spec)

task :github do
  #system "git ls-files | egrep -v \"\\.gitignore\" > Manifest.txt"
  #system "rake debug_gem | egrep -v \"^\\(in\" > statistics2.gemspec"
end

task :gem => :github
task :test => [EXT]
task :default => [:test]


