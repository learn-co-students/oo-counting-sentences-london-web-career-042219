

class String
  def intialize(name)
    @name = name
  end


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
  #we want to return a number of sentences separted by puntuation
    self.split(/\.|\?|\!/).delete_if {|s| s.size < 2}.size
  #if self does not contain any sentences then we want it to return 0
  end
end


# if self.sentence?
#   self.split(".,.")
# elsif self.exclamation?
#   self.split("!,!")
# elsif self.question?
#   self.split("?,?")

#
# binding.pry
#
# puts "bubble"
