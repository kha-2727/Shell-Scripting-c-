# !/bin/bash
n=1
o=$2
if [ $1 = left ]; then
    while [ $n -le $o ]
     do
       k=1
       while [ $k -le $n ]
       do
            echo -n  "*"
            k=$(( k+1 ))
       done     
       echo  
       n=$(( n+1 ))
     done   
l=$2 
 
    while [ $l -gt 1 ]
       do
       g=1  
       while [ $g -lt $l ]
        do
            echo -n "*"
            g=$(( g+1 ))
        done     
       echo 
       l=$(( l-1 ))
    done     


elif [ $1 = right ]; then 

      k=$2
       n=1
       
        while [ $k -gt 1 ]
          do 
           m=1
             while [ $m -le $k ]
              do
              echo -n " "
             m=$(( m+1 )) 
              done #Ye theek hai? spaces t
              u=0
                while [ $u -lt $n ]  
                  do
                  echo -n "*"
                  u=$(( $u+1 ))
                  done
           echo 
           k=$(( k-1 ))
           n=$(( n+1 ))
           done     
           
           k=1
           n=$2   
           
              while [ $k -le $2 ]
          do 
           m=1
             while [ $m -le $k ]
              do
              echo -n " "
             m=$(( m+1 )) 
              done #Ye theek hai? spaces tak
              u=0
                while [ $u -lt $n ]  
                  do
                  echo -n "*"
                  u=$(( $u+1 ))
                  done
           echo 
           k=$(( k+1 ))
           n=$(( n-1 ))
           done  
           
elif [ $1 = full ];then

     k=1
     j=$2
     while [ $k -le $2 ]
      do 
      m=1
         while [ $m -le $j ]
           do 
            echo -n " "
            m=$(( m+1 )) 
            done
            n=$(( k*2 )) 
            n=$(( n-1 ))
            l=1
             while [ $l -le $n ]
                do
                echo -n "*"
                l=$(( l+1 ))
                done
      k=$(( k+1 ))
      j=$(( j-1 ))
      echo
       done
       
       k=$2
       j=1
       
         while [ $k -gt 1 ]
      do 
      m=0
         while [ $m -le $j ]
           do 
            echo -n " "
            m=$(( m+1 )) 
            done
            n=$(( k*2 )) 
           n=$(( n-2 ))
            l=1
             while [ $l -lt $n ]
                do
                echo -n "*"
                l=$(( l+1 ))
                done
      k=$(( k-1 ))
      j=$(( j+1 ))
      echo
       done                    
            
       
     
fi                  
                  


