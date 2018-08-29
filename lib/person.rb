require "pry"

class Person
  def initialize(name)
    @bank_account = 25
    @name = name
    @happiness = 8
    @hygiene = 8
  end

  def name
    @name
  end

  def bank_account=(amount)
    @bank_account += amount
  end

  def bank_account
    @bank_account
  end

  def happiness=(new_happiness)

    if new_happiness > 10
      @happiness = 10
    elsif new_happiness < 0
      @happiness = 0
    else
      @happiness = new_happiness
    end
  end

  def happiness
    @happiness
  end

  def hygiene=(new_hygiene)

    if new_hygiene > 10
      @hygiene = 10
    elsif new_hygiene < 0
      @hygiene = 0
    else
      @hygiene = new_hygiene
    end
  end

  def hygiene
    @hygiene
  end

  def happy?
    if @happiness > 7
      true
    else false
    end
  end

  def clean?
    if @hygiene > 7
      true
    else false
    end
  end

  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene=(@hygiene+4)
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end


  def work_out
    self.happiness=(@happiness+2)
    self.hygiene=(@hygiene-3)
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness=(@happiness+3)
    friend.happiness = friend.happiness + 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend,topic)
    if topic == "politics"
      self.happiness=(@happiness-2)
      friend.happiness = friend.happiness - 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness=(@happiness+1)
      friend.happiness = friend.happiness + 1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end

end




#
# nicole = Person.new("nicole")
# nicole.take_bath


puts "hi"
