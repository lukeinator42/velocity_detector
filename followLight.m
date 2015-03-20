function [  ] = followLight( a , pinA, pinB, TheStepperMotor, stepsPerDegree)
%CHECKLIGHT Summary of this function goes here
%   Detailed explanation goes here


    while 1
 
    delay = 0.05;
    
        sensorA = a.readVoltage(pinA);
        sensorB = a.readVoltage(pinB);

        t=tic;

        while(toc(t)<delay)
        end
    
 
    
    

      moveamount = round(sensorA-sensorB)*5;
      
      if moveamount < 0.25 && moveamount > -0.25
      return;
      end
          
      moveRobot(TheStepperMotor, stepsPerDegree, moveamount);
      
      


     
 
    
     end

end

