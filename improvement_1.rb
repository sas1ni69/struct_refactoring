class TelcoProvider
  attr_accessor :provider_name

  PROVIDERS = [
    { name: :maxis,  homepage: 'maxis.com.my',  email: 'info@maxis.com.my',   telephone_number: '03-12345678' },
    { name: :digi,   homepage: 'digi.com.my',   email: 'contact@digi.com.my', telephone_number: '03-12344321' },
    { name: :celcom, homepage: 'celcom.com.my', email: 'help@celcom.com.my',  telephone_number: '03-87654321' }
  ]

  def initialize(provider_name)
    @provider_name = provider_name
  end

  def email
    provider[:email]
  end

  def homepage
    provider[:homepage]
  end

  def telephone_number
    provider[:telephone_number]
  end

  PROVIDERS.each do |provider|
    define_method("is_#{provider[:name]}?") do
      provider_name == provider[:name]
    end
  end

  private

  def provider
    @provider ||= begin
      PROVIDERS.select do |provider|
        provider_name == provider[:name]
      end.first
    end
  end
end

telco = TelcoProvider.new(:maxis)
telco.telephone_number # => 
telco.homepage # => 
telco.email # => 

telco.is_maxis? # => 
telco.is_digi? # => 

