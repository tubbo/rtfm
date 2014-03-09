
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
      new RTFM.base_dir
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
      @public_dirs ||= Dir[base_glob].select do |path|
        File.directory? path
      end
    end

    def base_glob
      @base_glob ||= "#{base}/*"
    end
  end
end
