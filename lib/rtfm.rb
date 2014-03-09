require 'rtfm/application'

# RTFM is TelVue's personal documentation server. It's very simple,
# producing a single index template that renders out every subdirectory
# of `/srv/doc`, with hyperlinks to their documentation. It should list
# out every viewable documentation repository we have on
# http://rtfm.teve.inc/. Mounted as the index page, it's a great way for
# people to find out about new projects as well as developers to
# navigate all of the documentation we have.

module RTFM
  # Environment that the server is running in.
  def self.env
    @env ||= ENV['RACK_ENV'] || 'development'
  end

  # Base directory of documentation.
  def self.base_dir
    @base_dir ||= ENV['RTFM_BASE_DIR'] || "/srv/pro/public"
  end

  def self.log
    @log ||= Logger.new log_location
  end

  def self.log_location
    return 'log/test.log' if env == 'test'
    STDOUT
  end
end
