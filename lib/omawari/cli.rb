require 'thor'
require 'thor/group'

module Omawari
  class CLI < Thor::Group
    include Thor::Actions

    def self.source_root
      File.expand_path('../../', __dir__)
    end

    def configure_rubocop
      template("templates/.rubocop.yml", ".rubocop.yml")
    end
  end
end
