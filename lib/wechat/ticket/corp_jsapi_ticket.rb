require 'wechat/ticket/jsapi_base'

module Wechat
  module Ticket
    class CorpJsapiTicket < JsapiBase
      # refresh jsapi ticket
      def refresh
        data = client.get('get_jsapi_ticket', params: { access_token: access_token.token })
        write_ticket_to_file(data)
        read_ticket_from_file
        jsapi_ticket_data
      end
    end
  end
end
