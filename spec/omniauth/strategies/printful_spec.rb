# frozen_string_literal: true

require 'spec_helper'

describe OmniAuth::Strategies::Printful do
  subject do
    @subject ||= begin
      @options ||= {}
      args = ['client_id', 'client_secret', @options].compact
      OmniAuth::Strategies::Printful.new(*args)
    end
  end

  context 'client options' do
    it 'should have correct name' do
      expect(subject.options.name).to eq('printful')
    end

    it 'should have correct site' do
      expect(subject.options.client_options.site).to eq('https://www.printful.com')
    end

    it 'should have correct authorize url' do
      expect(subject.options.client_options.authorize_url).to eq('https://www.printful.com/oauth/authorize')
    end

    it 'should have correct access token url' do
      expect(subject.options.client_options.token_url).to eq('https://www.printful.com/oauth/token')
    end
  end
end
