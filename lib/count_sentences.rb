require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')

  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    # using regex to match given punctions, be keen with spaces
    self.split(/\.|\?|!/).filter{|string| !string.empty?}.length
  end
end