# PLUMBED WITHOUT INSTANCE VARIABLES
# class Dude
#
#   def function_dude (input1, input2)
#     result = input1 + input2
#     self.function_tight(result)
#   end
#
#   def function_tight(result)
#     super_array = [result, result, result]
#     super_array.reduce(:+)
#   end
# end





# PLUMBED WITH INSTANCES
class Test

  def initialize(input1, input2)
    @input1 = input1
    @input2 = input2
    # @vowels = ["a", "e", "i", "o", "u", "y"]
  end

  def anagram?
    if
    @input1.downcase.split("").sort == @input2.downcase.split("").sort
    return "These words are anagrams!"
  else
    return "These words are not anagrams!"
    # result = @input1 + @input2
    # self.function_tight(result)
  end

  # def isword?
  #   vowels = ["a", "e", "i", "o", "u", "y"]
  #   input1array = @input1.downcase.split("")
  #   input2array = @input2.downcase.split("")
  #   if
  #   input1array.any? {|input1array| vowels.include?(input1array)}
  #   ||
  #   input2array.any? {|input2array| vowels.include?(input2array)}
  #   return true
  # else
  #   return "You need to input actual words!"
  # end

  end

    # >> cheeses = %w(chedder stilton brie mozzarella feta haloumi)
    # => ["chedder", "stilton", "brie", "mozzarella", "feta", "haloumi"]
    # >> foods = %w(pizza feta foods bread biscuits yoghurt bacon)
    # => ["pizza", "feta", "foods", "bread", "biscuits", "yoghurt", "bacon"]
    # >> foods.any? {|food| cheeses.include?(food) }
    # => true
  # def function_tight(result)
  #   super_array = [result, result, result]
  #   super_array.reduce(:+)
  # end
end
