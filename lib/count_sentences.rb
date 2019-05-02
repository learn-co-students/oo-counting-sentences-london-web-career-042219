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
  
  def string_split
    self.split(/[\?!.]/)
  end
  
  def no_empty
    string_split.reject { |value| value.empty? }
  end

  def count_sentences
    no_empty.count
  end
end
