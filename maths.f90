program maths
  ! pretty explicit: give me only these names from the module, like in Python: from geometry import area, pi
  use geometry, only: area, pi
  implicit none
  real :: r

  r = 2.0
  print*, ' pi is ', pi
  print*, ' the area of a circle of radius ', r, ' is ', area(r)
end program maths
