# frozen_string_literal: true

module Jekyll
  class SearchIndexFile < StaticFile
    def write(dest)
      true
    end
  end

  class SearchIndexGenerator < Generator
    priority :lowest

    def generate(site)
      require "json"

      index = []

      site.posts.docs.each do |post|
        index << {
          "title" => post.data["title"],
          "url" => post.url,
        }
      end

      filepath = File.join(site.dest, "assets", "search-data.json")
      FileUtils.mkdir_p(File.dirname(filepath))
      File.write(filepath, JSON.pretty_generate(index))
      site.static_files << SearchIndexFile.new(site, site.dest, "assets", "search-data.json")
    end
  end
end
