function [ velocityDetected ] = checkVelocity( a, pinA, pinB )
%CHECKVELOCITY Summary of this function goes here
%   Detailed explanation goes here
    delay = 0.1;
    
    
            %read sensors
        windowA=zeros(1, 3);
        windowB=zeros(1, 3);
    
    for i = 1:3

        windowA(1, i) = a.readVoltage(pinA);
        windowB(1, i) = a.readVoltage(pinB);

        t=tic;

        while(toc(t)<delay)
        end
    
    end
    
    

      moveamount = 0;
  
      
    diff = abs(a.readVoltage(pinA)-a.readVoltage(pinB));
    disp(diff);
     for i = 2:3
          ltor = windowA(1) * windowB(i);
          rtol = windowA(i) * windowB(1); 
          moveamount = max(moveamount, abs(ltor-rtol)-diff);
          if(ltor-rtol)<0
   
          end
     end
      

   % moveamount = (moveamount)*5;
   
    velocityDetected=false;
   
    if (moveamount > 1)

        velocityDetected=true;
      
    end

end

