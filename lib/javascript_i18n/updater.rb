require 'singleton'

module JavascriptI18n
  class Updater
    include Singleton

    attr_accessor :last_update_time

    def initialize
      # force first update
      self.last_update_time = DateTime.parse("1970-01-01 00:00:00")
    end

    def most_recent_update_time
      I18n.load_path.map { |translation_file| File.stat(translation_file).mtime }.max
    end

    def should_update?
      most_recent_update_time > last_update_time
    end
  end

  def self.update
    update! if Updater.instance.should_update?
  end

  def self.update!
    time = Updater.instance.most_recent_update_time
    builder = Builder.new(configuration.lib_path, configuration.output_path, configuration.output_style)
    builder.run
    Updater.instance.last_update_time = time
  end
end
