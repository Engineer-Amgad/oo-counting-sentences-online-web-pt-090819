require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    array = []
    count_sent = 0 
    array = self.split(/[.?!]/)
    array.each {|el| count_sent += 1 unless el.empty?}
    #binding.pry
    return count_sent
  end
end