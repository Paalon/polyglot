program program_leibniz
    implicit none
    integer(8) :: n
    character(len=32) :: arg
    call get_command_argument(1, arg)
    read (arg, *) n
    print ' (f0.16)', leibniz(n)
    stop
contains
    real(8) function leibniz(n)
        integer(8) :: n, i
        real(8) :: s
        s = 0
        do i = 0, n
            s = s + powersign(i) / (2 * i + 1)
        end do
        leibniz = 4 * s
    end function leibniz
    real(8) function powersign(i)
        integer(8) :: i
        if (mod(i, 2) .eq. 0) then
            powersign = 1
        else
            powersign = -1
        end if
    end function powersign
end program program_leibniz
