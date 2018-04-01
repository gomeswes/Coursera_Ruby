require_relative "store"

class ReportingSystem
  def initialize
    @store = Store.new
  end

  def method_missing(method, *args)
    super unless @store.respond_to? method
    @store.send(method)
    ReportingSystem.define_missing_method method
  end

  def self.define_missing_method method_name
    define_method(method_name) {@store.send(method_name)}
  end
end