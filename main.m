
a = arduino('/dev/tty.usbmodem5d11','uno','Libraries','Adafruit/MotorShieldV2');

shield = addon(a,'Adafruit/MotorShieldV2');
    
    
pinA=1;
pinB=0;

a.configureAnalogPin(pinA, 'Input');
a.configureAnalogPin(pinB, 'Input');

t=0;

windowA=zeros(1, 3);
windowB=zeros(1, 3);


TheStepperMotor = stepper(shield,1,200); 
% shield on motor port 2 with 200 steps
    
TheStepperMotor.RPM = 10;
        
stepsPerDegree = 200/360; % converts to degrees, since there are only 200 teeth on the motor

     

while 1
 
if(checkVelocity(a, pinA, pinB))
    disp('true');
    followLight(a, pinA, pinB, TheStepperMotor, stepsPerDegree);
end

end
 
%moveRobot(TheStepperMotor, stepsPerDegree, -120);