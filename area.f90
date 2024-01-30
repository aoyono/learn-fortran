! A module containing functions to compute the area of a circle
module geometry
  implicit none
  real, parameter :: pi = 4. * atan(1.)
  public :: area, pi
  private

contains
  !
  ! A function to calculate the area of a circle of given radius
  !
  real function area(r)
    ! intent(in) tells the compiler that r is expected
    ! to have a value on input and should not be changed by the function
    real, intent(in) :: r

    area = pi * r ** 2

  end function area
end module geometry
