class TelcoProvider
  attr_accessor :provider_name

  def initialize(provider_name)
    @provider_name = provider_name
  end

  def email
    if provider_name == :digi
      'contact@digi.com.my'
    elsif provider_name == :maxis
      'info@maxis.com.my'
    else
      'help@celcom.com'
    end
  end

  def telephone_number
    if provider_name == :digi
      '03-12344321'
    elsif provider_name == :maxis
      '03-12345678'
    else
      '03-87654321'
    end
  end

  def homepage
    if provider_name == :digi || provider_name == :maxis
      "#{provider_name}.com.my"
    else
      'celcom.com'
    end
  end

  def is_digi?
    provider_name == :digi
  end

  def is_maxis?
    provider_name == :maxis
  end

  def is_celcom?
    provider_name == :celcom
  end
end

telco = TelcoProvider.new(:celcom)
telco.telephone_number # => 
telco.homepage # => 
telco.email # => 

telco.is_maxis? # => 
telco.is_digi? # => 
