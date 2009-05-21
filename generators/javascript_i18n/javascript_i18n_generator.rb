require 'rbconfig'

class JavascriptI18nGenerator < Rails::Generator::Base
  def manifest
    record do |m|
      m.directory "public/javascripts"
      m.directory "public/javascripts/i18n"
      m.file      "javascripts/i18n.js", "public/javascripts/i18n/i18n.js"

      m.directory "config"
      m.directory "config/initializers"
      m.file      "initializers/javascript_i18n.rb", "config/initializers/javascript_i18n.rb"

      m.directory "lib/tasks"
      m.file      "tasks/javascript_i18n.rake", "lib/tasks/javascript_i18n.rake"
    end
  end

  protected

  def banner
    "Usage: #{$0} javascript_i18n"
  end
end
