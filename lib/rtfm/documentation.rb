
# The PORO responsible for enumerating over the public dirs that are
# documentation paths.

module RTFM
  class Documentation
    include Enumerable

    attr_reader :base

    def initialize(from_base)
      @base = from_base
    end

    def self.all
      new "/srv/pro/public/*"
    end

    def each
      collection.each { |doc| yield doc }
    end

    private
    def collection
      @collection ||= public_dirs.map do |path|
        File.basename path
      end
    end

    def public_dirs
      @public_dirs ||= Dir[base].select do |path|
        File.directory? path
      end
    end
  end
end
