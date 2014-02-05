class Dessert

  def initialize(name, calories)

    @name = name
    @calories = calories

  end



  def healthy?
    p "healthy?"
    @calories < 200

  end



  def delicious?
    p "Delicious?"
    true

  end

end


class JellyBean < Dessert

  def initialize(name, calories, flavor)

    @name = name
    @calories = calories
    @flavor = flavor

  end



  def delicious?
    p "Delicious?"

    if @flavor.downcase == "black licorice"
      false
    else
      true
    end

  end

end


a=JellyBean.new("Spunky",232,"Black Licorice")

p a

p a.delicious?

p a.healthy?

b=Dessert.new("asd",290)

p b

p b.delicious?

p b.healthy?

c=JellyBean.new("Fatty",180,"Cream")

p c

p c.delicious?

p c.healthy?
