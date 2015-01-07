module Chuizi
  class Application
    def get_controller_and_action(env)
      _, controller_name, action, __ = env["PATH_INFO"].split('/', 4)

      [get_controller_klass(controller_name), action]
    end

    private

    def get_controller_klass(controller_name)
      controller_klass_name = [controller_name, "Controller"].map(&:capitalize).join

      Object.const_get(controller_klass_name)
    end
  end
end
