require ('pry')
require ('rspec')
require ('anagrams')




# PLUMBED WITHOUT INSTANCE VARIABLES
# describe("Change#find_change") do
#   it ("returns 8") do
#     dude1 = Dude.new()
#     expect(dude1.function_dude(5,3)).to(eq(24))
#   end
# end

# PLUMBED WITH INSTANCES
describe("Anagram#anagram?") do
  it ("Comparing the words eat and tea will return true") do
    test1 = Test.new("eat", "tea")
    expect(test1.anagram?()).to(eq(true))
  end
  it ("Comparing the words eat and tear will return false") do
    test1 = Test.new("eat", "tear")
    expect(test1.anagram?()).to(eq(false))
  end
  it ("Comparing the words Eat and Tea will return true") do
    test1 = Test.new("Eat", "Tea")
    expect(test1.anagram?()).to(eq(true))
  end
  it ("An input that is not a word will return an error message") do
    test1 = Test.new("Eat", "Tzrybq")
    expect(test1.anagram?()).to(eq("You need to input actual words!"))
  end
end


# Add a rule to check if the inputs are words. Words can only be anagrams or anagrams if they are, in fact, actually words. (For instance, "yurb" isn't an anagram of "ruby" because "yurb" isn't a real word.) A word must contain a vowel (a, i, e, o, u) or y. Otherwise it's not a word. If one of the inputs has no vowels, your method should return something like this: "You need to input actual words!" (You only need to write a rule for vowels.)
#
# If phrases aren't anagrams, the method should check whether they are actually "antigrams." For our purposes, a word is an "antigram" of another word if no letters match. For example, "hi" has no matches with "bye". The method should return something like this if there are no letter matches: "These words have no letter matches and are antigrams."
#
# Account for multiple words being anagrams or "antigrams." Spaces and punctuation shouldn't count (so they should be removed). You'll need to make sure that each word in the inputted phrases is really a word (passing condition #4 above). You may want to use a regular expression to remove additional characters.