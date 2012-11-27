module DependencyRevealer
  class CLI
    def initialize(gemfile, gemfile_lock, out = $stdout, err = $stderr)
      @out, @err = out, err

      [gemfile, gemfile_lock].map do |file|
        if !File.exists?(file)
          @out.puts self.class.banner
          @out.puts "#{file} not found"
          @out.puts "Quitting..."
          exit 1
        end
      end
      @gemfile, @gemfile_lock = gemfile, gemfile_lock
    end

    def describe(attributes)
      attrs = attributes.split(',')
      definition = Bundler::Definition.build(@gemfile, @gemfile_lock, nil)
      definition.specs.map do |spec|
        @out.puts attrs.map { |attr| spec.send(attr) }.join(', ')
      end
    end

    def self.banner
      <<-EOBANNER
######################################

Usage: reveal [Gemfile [Gemfile.lock]]

######################################
EOBANNER
    end
  end
end
