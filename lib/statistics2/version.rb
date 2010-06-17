unless defined?(Statistics2) && defined?(Statistics2::VERSION)
  module Statistics2
    VERSION = "0.54.1"
  end
end

unless Kernel.singleton_methods.include?("is_windows?")
  module Kernel
    def self.is_windows?
      RUBY_PLATFORM =~ /(win|w)32$/
    end
  end
end
