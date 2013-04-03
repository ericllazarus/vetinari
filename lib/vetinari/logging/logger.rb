module Vetinari
  module Logging
    class Logger < ::Logger
      def initialize(*args)
        super(*args)
        
        self.formatter = proc do |severity, datetime, progname, msg|
          "#{severity} #{datetime.strftime('%Y-%m-%d %H:%M:%S')} #{msg}\n"
        end
      end
    end
  end
end
