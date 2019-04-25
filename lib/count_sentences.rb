

class String

  def sentence?
    self.split('')[-1] == '.' ? true : false
  end

  def question?
    self.split('')[-1] == '?' ? true : false
  end

  def exclamation?
    self.split('')[-1] == '!' ? true : false
  end

  def count_sentences   # 5 lines?
    count = self.split(' ').map {|string| string.sentence?}
    count << self.split(' ').map {|string| string.question?}
    count << self.split(' ').map {|string| string.exclamation?}
    count = count.flatten
    count.select {|bool| bool == true}.length
  end
end
