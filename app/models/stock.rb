class Stock < ApplicationRecord

    def self.new_lookup(ticker_symbol)
        client = IEX::Api::Client.new(publishable_token: 'Tpk_6625369d965f41b69fa57c5b07359ac0', 
                                        secret_token: Rails.application.credentials.iex_client[:sandbox_api_key], 
                                        endpoint: 'https://sandbox.iexapis.com/v1')

        client.price(ticker_symbol)
    end
end
