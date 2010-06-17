# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{statistics2}
  s.version = "0.54.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Brendan Ribera", "Shin-ichiro Hara"]
  s.date = %q{2010-06-16}
  s.description = %q{Statistics2 is a module that provides normal, Chi-square, t- and F- probability distributions for Ruby. It is a fork/continuation of Shin-ichiro Hara's original code. It provides a native, compiled extension and a pure Ruby implementation.}
  s.email = ["brendan.ribera@gmail.com", "sinara@blade.nagaokaut.ac.jp"]
  s.extensions = ["ext/extconf.rb"]
  s.extra_rdoc_files = ["Manifest.txt"]
  s.files = ["History.rdoc", "Manifest.txt", "README.rdoc", "Rakefile", "examples/mklist.rb", "examples/show.rb", "ext/extconf.rb", "ext/statistics2.c", "lib/statistics2.rb", "lib/statistics2/no_ext.rb", "lib/statistics2/version.rb", "statistics2.gemspec", "test/sample_tbl.rb", "test/test_ext.rb", "test/test_inv.rb"]
  s.homepage = %q{http://github.com/abscondment/statistics2}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib", "ext"]
  s.rubyforge_project = %q{statistics2}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Statistical Distributions for Ruby. Based on Shin-ichiro Hara's original library, updated for Ruby 1.9}
  s.test_files = ["test/test_ext.rb", "test/test_inv.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<hoe>, [">= 2.4.0"])
    else
      s.add_dependency(%q<hoe>, [">= 2.4.0"])
    end
  else
    s.add_dependency(%q<hoe>, [">= 2.4.0"])
  end
end
