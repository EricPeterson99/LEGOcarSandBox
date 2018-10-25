global key
InitKeyboard();
state = 0; % 0 - Forward, 1 - Bumped and reversing, 2 - Turning timerVal = 0; % Placeholder for timer.
timerVal = 0;
while 1
    switch state
        case 0 
            brick.MoveMotor('AB',100);
            if brick.TouchPressed(1)
                state = 1;
                timerVal= tic;
            end
        case 1
            brick.MoveMotor('AB', -100);
            pause(1);
            if(toc(timerVal) > 0.5)
               state = 2;
               timerVal = tic;
            end
        case 2
            brick.MoveMotor('A', -100);
            brick.MoveMotor('B', 100);
            if(toc(timerVal) > 0.25)
                state = 0;
            end
        case 'q'
            brick.StopAllMotors();
            break;
    end
    if(key == 'q')
        brick.StopAllMotors();
        break;
    end
end
CloseKeyboard();