class DexcomAuthenticationController < ApplicationController
  AUTHORIZE_URL = 'https://sandbox-api.dexcom.com/v2/oauth2/login'.freeze

  def new
    redirect_to "#{AUTHORIZE_URL}?#{auth_params.to_query}", allow_other_host: true
  end

  private

  def auth_params
    {
      client_id: 'RPp1g18MC9B7rKds9dZ2AwlChpXwFdIc',
      redirect_uri: 'http://localhost:3000',
      response_type: 'code',
      scope: 'offline_access'
    }
  end
end
