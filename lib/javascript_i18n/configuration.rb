require 'singleton'

module JavascriptI18n
  class Configuration
    include Singleton

    ATTRIBUTES = [:root_path, :output_dir, :lib_dir, :output_style]

    attr_accessor *ATTRIBUTES

    def output_path
      if root_path and output_dir
        File.join(root_path, output_dir)
      end
    end

    def lib_path
      if root_path and lib_dir
        File.join(root_path, lib_dir)
      end
    end
  end

  def self.configuration
    if block_given?
      yield Configuration.instance
    end
    Configuration.instance
  end
end
