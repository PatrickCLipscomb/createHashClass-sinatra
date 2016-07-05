class OurHash
  define_method(:initialize) do
    @keyArray = []
    @valueArray = []
  end
  define_method(:OurStore) do |key, value|
    @keyArray.push(key)
    @valueArray.push(value)
  end
  define_method(:OurFetch) do |key|
    index = @keyArray.index(key)
    @valueArray[index]
  end
end
