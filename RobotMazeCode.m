L_MOTOR = 'A';
R_MOTOR = 'B';
PICK_UP_COLOR = 2;
DROP_OFF_COLOR = 4;
START_COLOR = 3;
STOP_COLOR = 5;

display(brick.UltrasonicDist(4));

while brick.UltrasonicDist(4) <= 35 %While the right wall is less than that distance away
    display(brick.UltrasonicDist(4));
    
    brick.MoveMotor(R_MOTOR + L_MOTOR, 25); %Speed that the motor moves
    
    color =  brick.ColorColor(3);
    display(color);
    switch color
        case STOP_COLOR
            brick.StopMotor(L_MOTOR + R_MOTOR, 'Brake');
            pause(1)
        case PICK_UP_COLOR
            display("YES");
            %LEGOkeyboardControl;             
        case DROP_OFF_COLOR
            brick.MoveMotor(L_MOTOR + R_MOTOR, 100)
            pause(1.5)
            brick.MoveMotorAngleRel('D', 25, 40, 'Brake');
        case START_COLOR
        case 0
        case 'q'
            brick.StopMotor(L_MOTOR + R_MOTOR + 'D');
            break;
    end
end
if brick.UltrasonicDist(4) > 35
    %Don't change this
    brick.MoveMotorAngleRel(L_MOTOR, 50, -270, 'Brake')
    brick.MoveMotorAngleRel(R_MOTOR, 50, 270, 'Brake');   
end

       

    