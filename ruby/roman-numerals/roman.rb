class Fixnum
  def to_roman
    remaining = self
    ROMANS.each_with_object('') do |(arabic, roman), result|
      result << roman * (remaining / arabic) #takes how many times arabic goes into num; places that many numerals into result; 
      remaining %= arabic #returns the left over when doing remaining / arabic; note that when doing a smaller / larger number the smaller number will be returned as the remainder; once we dived the remaining by the arabic and it is larger / smaller then note that diving completely take out the divisor out as a factor - > 40 / 10 = 4 (now 10 is no longer a factor of this number) and this is why eliminate an arabic's romans after it has been added
    end
  end

  ROMANS = { 
    1000 => 'M',
    900 => 'CM',
    500 => 'D',
    400 => 'CD',
    100 => 'C',
    90 => 'XC',
    50 => 'L',
    40 => 'XL',
    10 => 'X',
    9 => 'IX',
    5 => 'V',
    4 => 'IV',
    1 => 'I'
  }
end

#QUESTIONS
#is this called monkeypatching?

#THOUGHTS
#This is not a permanent change to the Fixnum class. It seems that this this new method that is being added will only occur at runtime.

#Version2: Refactored the code to abstract logic. I have a separate method to deal with normal edge cases and for edge cases








