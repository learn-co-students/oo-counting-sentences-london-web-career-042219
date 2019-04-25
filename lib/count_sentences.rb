require 'pry'

class String

  def sentence?
    self[-1] == "." ? true : false
  end

  def question?
    self[-1] == "?" ? true : false
  end

  def exclamation?
    self[-1] == "!" ? true : false
  end

  def count_sentences
    self.split(/[.!?]/).reject{ |item| item==""}.length
  end
end

#binding.pry
#puts "Mischief Managed!"
