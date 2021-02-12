require 'rails/commands/server'
module Rails
  class Server
    def default_options
      super.merge({
        :Port => 4000
        })
    end
  end
end