require('rspec')
require('hash')

describe(OurHash) do
  describe('#OurStore') do
    it('stores a new key value pair in the hash') do
      test_hash = OurHash.new()
      expect(test_hash.OurStore("hello", "world")).to(eq(["world"]))
    end
  end
  describe('#OurFetch') do
    it('fetches the value of the designated key') do
      test_hash = OurHash.new()
      test_hash.OurStore("hello", "world")
      expect(test_hash.OurFetch("hello")).to(eq("world"))
    end
  end
end
