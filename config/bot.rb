class Bot
  class << self
    def env
      @_env ||= ActiveSupport::StringInquirer.new(ENV['BOT_ENV'] || 'development')
    end
  end
end
