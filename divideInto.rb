class String
  def divide_into(n)
    scan(/.{1,#{(size + n - 1) / n}}/)
  end
end
