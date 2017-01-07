def echo str
  str
end

def shout str
  str.upcase
end

def repeat *argv
  if argv.length == 1
    argv[0] +" "+ argv[0]
  else
    (argv[0]+" ")*(argv[1]-1)+argv[0]
  end
end

def start_of_word word, n
  str =""
  while n > 0
   str = str + word.split(//)[n-1]
   n = n-1
  end
  str.reverse
end

def first_word word
  word.split[0]
end

def titleize str
  little_words =['a','an','and','on','at','or','in','the', 'over']
  arr = str.split
  new_str = arr[0].capitalize
  arr[1..-1].each do |word|
    if little_words.index(word) == nil
      new_str= new_str + " " + word.capitalize
    else
      new_str= new_str + " " + word
    end    
  end
  new_str
end
