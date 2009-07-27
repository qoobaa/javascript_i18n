module JavascriptI18n
  class Builder
    attr_accessor :output_path, :lib_path, :output_style

    def initialize(lib_path, output_path, output_style = :merged)
      self.lib_path = lib_path
      self.output_path = output_path
      self.output_style = output_style
      I18n.backend.send(:init_translations)
    end

    def run
      lib = File.read(File.join(lib_path, "i18n.js")) if output_style == :merged
      I18n.backend.send(:translations).each do |key, value|
        File.open(File.join(output_path, "#{key}.js"), "w") do |file|
          if output_style == :merged
            file.puts(lib)
            file.puts("\n")
          end
          file.puts("I18n.locale = I18n.locale || \"#{key}\";")
          file.puts("I18n.translations = I18n.translations || #{value.to_json};")
        end
      end
    end
  end
end
