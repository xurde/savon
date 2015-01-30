class SavonClientUser

  attr_reader :trigger

  def initialize
    @client = Savon::Client.new(wsdl: 'http://example.org/service?wsdl')
  end

  def perform_request
    @client.call(:operation_name) do
      self.my_custom_method
    end
  end

  def my_custom_method
    @trigger = 'sprung'
  end
end
