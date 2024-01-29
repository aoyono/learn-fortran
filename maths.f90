program maths
  implicit none
  real :: r, area
  real, parameter :: pi = 4.*atan(1.)

  r = 2.0
  area = pi * r ** 2
  print*, ' pi is ', pi
  print*, ' the area of a circle of radius ', r, ' is ', area
end program maths
