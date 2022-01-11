program TaylorModel

    include 'TaylorModel.h'

    outcnt = 0

    call initialization

    call flow_field

    do 10 time = temporary_time + dt, endtime, dt

        call reaction_rate

        call plasma_reactions

        call log

10  continue 

    call post

    open(1000,file='end.dat',status='unknown')
    write(1000, 'a5, f5.2, a11') "time=", t, "normal closed"
    
end program TaylorModel