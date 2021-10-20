class JsonWebToken
  class << self
    # def encode(payload, exp = 24.hours.from_now)
    def encode(payload, exp = 10.days.from_now)
      payload[:exp] = exp.to_i
      # JWT.encode(payload, Rails.application.secrets.secret_key_base)
      JWT.encode(payload, ENV['TRIPS_SECRET'])
    end

    def decode(token)
      # body = JWT.decode(token, Rails.application.secrets.secret_key_base)[0]
      body = JWT.decode(token, ENV['TRIPS_SECRET'])[0]
      HashWithIndifferentAccess.new body
    # rubocop:disable Style/RescueStandardError
    rescue
      nil
    end
    # rubocop:enable Style/RescueStandardError
  end
end
