def add a, b
  a+b
end

def subtract a, b
  a-b
end

def sum arr
  sum = 0
  arr.each do |element|
    sum = sum + element
  end
  sum
end

def multiply *argv
  prod = 1
  argv.each do |number|
    prod = prod * number
  end
  prod
end

def power a, b
  a ** b
end

def factorial num
  if (num == 1 || num == 0)
    return 1
  end
  return num * (factorial (num-1))
end
