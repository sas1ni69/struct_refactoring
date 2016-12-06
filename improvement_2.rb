class TelcoProvider
  attr_accessor :provider_name

  Provider = Struct.new(:name, :homepage, :email, :telephone_number)

  PROVIDERS = [
    Provider.new(:maxis,  'maxis.com.my',  'info@maxis.com.my',   '03-12345678'),
    Provider.new(:digi,   'digi.com.my',   'contact@digi.com.my', '03-12344321'),
    Provider.new(:celcom, 'celcom.com.my', 'help@celcom.com.my',  '03-87654321')
  ]

  def initialize(provider_name)
    @provider_name = provider_name
  end

  def email
    provider.email
  end

  def homepage
    provider.homepage
  end

  def telephone_number
    provider.telephone_number
  end

  def is?(provider_name)
    provider_name == provider.name
  end

  private

  def provider
    @provider ||= PROVIDERS.find { |provider| provider_name == provider.name }
  end
end

telco = TelcoProvider.new(:maxis)
telco.telephone_number # => 
telco.homepage # => 
telco.email # => 

telco.is?(:maxis) # => 
telco.is?(:digi) # => 

