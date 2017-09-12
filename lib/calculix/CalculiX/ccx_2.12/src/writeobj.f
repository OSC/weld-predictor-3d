!
!     CalculiX - A 3-dimensional finite element program
!              Copyright (C) 1998-2015 Guido Dhondt
!
!     This program is free software; you can redistribute it and/or
!     modify it under the terms of the GNU General Public License as
!     published by the Free Software Foundation(version 2);
!     
!
!     This program is distributed in the hope that it will be useful,
!     but WITHOUT ANY WARRANTY; without even the implied warranty of 
!     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the 
!     GNU General Public License for more details.
!
!     You should have received a copy of the GNU General Public License
!     along with this program; if not, write to the Free Software
!     Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
!
      subroutine writeobj(objectset,iobject,g0)
!
!     writes the results of the objective function in the .dat file
!
      implicit none
!
      character*81 objectset(3,*)
      integer iobject,i
      real*8 g0(*)
!     
!     
      i=iobject+1
!
      if(objectset(1,i)(1:12).eq.'DISPLACEMENT') then
!
      write(5,*)
      write(5,*)'OBJECTIVE: DISPLACEMENT'  
      write(5,*)
      write(5,'(7x,e14.7)') g0(i)
!
      elseif(objectset(1,i)(1:14).eq.'EIGENFREQUENCY') then
!
      write(5,*)
      write(5,*)'OBJECTIVE: EIGENFREQUENCY'  
      write(5,*)
      write(5,'(7x,e14.7)') g0(i)
!
      elseif(objectset(1,i)(1:4).eq.'MASS') then
!
      write(5,*)
      write(5,*)'OBJECTIVE: MASS'  
      write(5,*)
      write(5,'(7x,e14.7)') g0(i)
!
      elseif(objectset(1,i)(1:11).eq.'SHAPEENERGY') then
!
      write(5,*)
      write(5,*)'OBJECTIVE: SHAPE ENERGY' 
      write(5,*) 
      write(5,'(7x,e14.7)') g0(i)
!
      elseif(objectset(1,i)(1:6).eq.'STRESS') then
!
      write(5,*)
      write(5,*)'OBJECTIVE: STRESS'  
      write(5,*)
      write(5,'(7x,e14.7)') g0(i)
!
      endif
!      
      return
      end

