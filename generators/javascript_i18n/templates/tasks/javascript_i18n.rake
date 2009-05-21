namespace :js do
  namespace :i18n do
    desc "Build I18n JavaScript files using current translations"
    task :build => :environment do
      JavascriptI18n.update!
    end
  end
end
