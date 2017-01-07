class Book
# write your code here
  attr_accessor :title

  def title=(new_tit)
    arr=new_tit.split
    @title = arr[0].capitalize
    arr[1..-1].each do |word|
      if word.match(/\b(a|an|the|and|with|in|of)\b/)
        @title = @title + ' ' + word
      else
        @title = @title + ' ' + word.capitalize
      end
    end
    @title
  end
end
