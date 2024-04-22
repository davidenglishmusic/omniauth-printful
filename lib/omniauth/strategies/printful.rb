# frozen_string_literal: true

require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class Printful < OmniAuth::Strategies::OAuth2
      option :name, 'printful'

      option :client_options, {
        site: 'https://www.printful.com',
        authorize_url: 'https://www.printful.com/oauth/authorize',
        token_url: 'https://www.printful.com/oauth/token'
      }

      uid { generate_uid }

      info do
        {}
      end

      extra do
        {
          'raw_info' => raw_info
        }
      end

      def raw_info
        @raw_info ||= access_token
      end

      def request_phase
        redirect client.auth_code.authorize_url({ redirect_url: callback_url }.merge(authorize_params))
      end

      def generate_uid
        SecureRandom.uuid
      end
    end
  end
end
