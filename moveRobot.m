function [] = moveRobot( TheStepperMotor, stepsPerDegree, degrees)
    %MOVEROBOT Summary of this function goes here
    %   Detailed explanation goes here
    
    steps = degrees*stepsPerDegree;

    move(TheStepperMotor,round(steps));

end

