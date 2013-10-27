require "simplecov/vimformatter/version"

require 'pathname'

module SimpleCov
  module Formatter
    class VimFormatter
      def format(result)
        File.open "coverage.txt", "w" do |coverage|
          result.files.each do |file|
            coverage.write "#{file.filename}\t#{file.coverage.join(',')}\n"
          end
        end
      end
    end
  end
end
