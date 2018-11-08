module ArrayMatcher
  def match_array?(expect, actual)
    expect.sort == actual.sort
  end
end
