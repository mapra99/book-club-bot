module Slack
  class WebhookMessager
    WEBHOOK_URL = ENV.fetch('WEBHOOK_MESSAGE_URL')

    def send_message(message)
      RestClient.post(
        WEBHOOK_URL,
        {
          text: message
        }.to_json
      )
    end
  end
end
