class TelcoProvider
  Provider = Struct.new(:name, :homepage, :email, :telephone_number) do
    def is?(provider_name)
      provider_name == name
    end
  end

  PROVIDERS = [
    Provider.new(:maxis,  'maxis.com.my',  'info@maxis.com.my',   '03-12345678'),
    Provider.new(:digi,   'digi.com.my',   'contact@digi.com.my', '03-12344321'),
    Provider.new(:celcom, 'celcom.com.my', 'help@celcom.com.my',  '03-87654321'),
  ]

  def self.find_by_name(provider_name)
    PROVIDERS.find { |provider| provider_name == provider.name }
  end
end

telco = TelcoProvider.find_by_name(:digi)
telco.telephone_number # => 
telco.homepage # => 
telco.email # => 

telco.is?(:maxis) # => 
telco.is?(:digi) # => 
