# coding: utf-8

module Ruboty
  module Handlers
    class Nullpo < Base
      env :NULLPO_RESPONSE_STYLE, "rich: Use rich style ｶﾞｯ", optional: true

      on /ぬるぽ|ヌルポ|nullpo/i, name: "nullpo", description: "Request ｶﾞｯ", all: true

      def nullpo(message)
        return if message.from == robot.name
begin
        body = if rich?
          <<-GA
　 Λ＿Λ　　　　＼＼
 （　・∀・）　　　|　|　ｶﾞｯ
と　　　　）　　　|　|
　 Ｙ　/ノ　　　 人
　　 /　）　 　 < 　>_Λ∩
 ＿/し´　／／. Ｖ｀Д´）/
（＿フ彡　　　　　　 /　>>@#{message.from}
GA
        else
          'ｶﾞｯ'
        end
        message.reply(body)
rescue => msg
puts msg
end
      end

      private

      def rich?
        ENV['NULLPO_RESPONSE_STYLE'] == 'rich'
      end

    end
  end
end
