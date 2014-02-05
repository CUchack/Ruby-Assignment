class Numeric
  @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar' => 1.0}

  def method_missing(method_id)
    singular_currency = method_id.to_s.gsub(/s$/,'')
    if @@currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    else
      super
    end
  end

  def in(currency)
    singular_currency = to_singular(currency)
    if @@currencies.has_key?(singular_currency)
      self / @@currencies[singular_currency]
    else
      super
    end
  end

  private

  def to_singular(word)
    word.to_s.gsub( /s$/, '')
  end
end

p "5 dollar to euros"
p 5.dollar.in(:euros)
p "10 euros in rupees"
p 10.euros.in(:rupees)
p "15 yen to dollars"
p 15.yen.in(:dollars)
p "1 dollar in rupee"
p 1.dollars.in(:rupee)

