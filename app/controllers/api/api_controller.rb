class Api::ApiController < ActionController::Base

  private

  def authenticate

    authenticate_or_request_with_http_token do |token, options|
      token == TOKEN
    end
  end

end
