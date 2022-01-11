subroutine plasma_reactions

    include 'TaylorModel.h'

!Reaction Rate

!Resting Platelets

ap(i,j) = ap(i,j) + dt*( &
          -(u(i,j)*(ap(i+1,j)-ap(i,j))/dx + v(i,j)*(ap(i,j+1)-ap(i,j))/dy) &  ! Convection term
          + Dap*((ap(i+1,j)+ap(i-1,j)-2*ap(i,j))/(dx*dx) &
               + (ap(i,j+1)+ap(i,j-1)-2*ap(i,j))/(dy*dy)) & ! Diffusion term
          + kpa*rp(i,j))                   ! Reaction term

!Activated Platelets

!Platelet-Released Agonist (ADP)

end subroutine plasma_reactions