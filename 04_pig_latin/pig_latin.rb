#write your code here
def translate str
  def single str
    if str.to_s.match(/^[aeiouy]{1}/)
      str.to_s+'ay'
    elsif str.to_s.match(/(^[^aeiouy]{3}|^[^aeiouy]{1}qu)([^$1]+)/)
      $2+$1+'ay'
    elsif str.to_s.match(/(^[^aeiouy]{2}|^qu)([^$1]+)/)
      $2+$1+'ay'
    elsif str.to_s.match(/(^[^aeiouy]{1})([^$1]+)/)
      $2+$1+'ay'
    end
  end
  
  res = ""
  arr = str.split
  res = single arr[0]
  arr[1..-1].each do |word|
    res = res +" "+ (single word)
  end
  res
end
