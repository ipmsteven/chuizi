require "erubis"

module Chuizi
  class Controller
    attr_reader :env

    def initialize(env)
      @env = env
    end

    def render(view_name, locals = {})
      filename = File.join "app", "views", controller_name, "#{view_name}.html.erb"
      template = File.read filename

      eruby = Erubis::Eruby.new(template)
      eruby.result locals.merge(env: env)
    end

    private

    def controller_name
      klass = self.class
      klass = klass.to_s.gsub(/Controller$/, "")
      to_underscore klass
    end

    def to_underscore(name)
      name.gsub(/::/, '/').
      gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2').
      gsub(/([a-z\d])([A-Z])/,'\1_\2').
      tr("-", "_").
      downcase
    end
  end
end
