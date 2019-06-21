module Lita
  module Handlers
    class Doubler < Handler
      # insert handler code here
    route(
      /^double\s+(\d+)$/i, :respond_with_double,
      command: true,
      help: { 'double N' => 'prints N + N' }
      )

      def double_number(e)
        n + N
      end
      
      def respond_with_double(response)
        # Read up on the Ruby MatchData class for more options n = response.match_data.captures.first
        n = Integer(n)
        response.reply "#{n} + #{n} = #{double_number n}" 
      end
      Lita.register_handler(self)
    end
  end
end

