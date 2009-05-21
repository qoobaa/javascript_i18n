# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{javascript_i18n}
  s.version = "0.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jakub Kuźma"]
  s.date = %q{2009-05-21}
  s.email = %q{qoobaa@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "generators/javascript_i18n/javascript_i18n_generator.rb",
     "generators/javascript_i18n/templates/initializers/javascript_i18n.rb",
     "generators/javascript_i18n/templates/javascripts/i18n.js",
     "generators/javascript_i18n/templates/tasks/javascript_i18n.rake",
     "javascript_i18n.gemspec",
     "lib/javascript_i18n.rb",
     "lib/javascript_i18n/builder.rb",
     "lib/javascript_i18n/configuration.rb",
     "lib/javascript_i18n/updater.rb",
     "test/javascript_i18n_test.rb",
     "test/test_helper.rb"
  ]
  s.homepage = %q{http://github.com/qoobaa/javascript_i18n}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.3}
  s.summary = %q{Dead simple JavaScript i18n}
  s.test_files = [
    "test/javascript_i18n_test.rb",
     "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
