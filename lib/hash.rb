class OurHash
  define_method(:initialize) do |name|
    name = @name
    @name = Array.new()
  end
  define_method(:OurStore) do |key, value|
    @keyArray = []
    @keyArray.push(key)
    @valueArray = []
    @valueArray.push(value)
    @name.push(@keyArray, @valueArray)
  end
  define_method(:OurFetch) do |key|
    index = @name[0].index(key)
    @name[1][index]
  end
end
