require "chuizi/version"
require "chuizi/routing"
require "chuizi/controller"

module Chuizi
  class Application
    def call(env)
      if env['PATH_INFO'] == '/favicon.ico'
        return [404, {'Content-Type' => 'text/html'}, []]
      end

      controller_klass, action = get_controller_and_action(env)
      controller = controller_klass.new(env)
      text = controller.send(action)

      [200, {'Content-Type' => 'text/html'}, [text]]
    end
  end

end
