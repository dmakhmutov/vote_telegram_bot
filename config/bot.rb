class Bot
  class << self
    def env
      @_env ||= ENV['BOT_ENV'] || 'development'
    end
  end
end
