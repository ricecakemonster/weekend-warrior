def leap_year?(year)
  (year%100 != 0 && year%4 == 0) || year%400 == 0

  # if year%100 != 0
  #    year%4 == 0
  # else
  #   year%400 == 0
  # end
end
