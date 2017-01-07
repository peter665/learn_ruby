class Timer
  #write your code here
  attr_accessor :seconds
  def initialize
    @seconds = 0
  end
  def time_string
    h=0
    m=0
    s=0
    left = @seconds
    if left/3600 >= 1
      h = left/3600
      left = left - h*3600
    end
    if left/60 >= 1
      m = left/60
      left = left - m*60
    end
    s = left

    def form x
      x = x.to_s
      if !(x.match(/\w+{2}/))
        x = '0'+x
      end
      x
    end

    (form h) +':'+(form m) +':'+(form s)
  end
end
