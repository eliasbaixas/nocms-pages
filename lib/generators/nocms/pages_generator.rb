module NoCms
  class PagesGenerator < Rails::Generators::Base

    source_root File.expand_path("../templates/", __FILE__)

    def generate_nocms_pages_initializer
      template "config/initializers/nocms/pages.rb", File.join(destination_root, "config", "initializers", "nocms", "pages.rb")
    end

    def generate_nocms_blocks_initializer
      generate "nocms:blocks"
    end

    def self.namespace
      "nocms:pages"
    end

  end
end
