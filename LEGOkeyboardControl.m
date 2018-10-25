global key
InitKeyboard();

while 1
    pause(0.1);
    switch key
        case 'uparrow'
            brick.MoveMotor('A', 150);
            brick.MoveMotor('B', 150);
        case 'downarrow'
            brick.MoveMotor('A', -100);
            brick.MoveMotor('B', -100);
        case 'leftarrow'
            brick.MoveMotor('A', -50);
            brick.MoveMotor('B', 50);
        case 'rightarrow'
            brick.MoveMotor('A', 50);
            brick.MoveMotor('B', -50);
        case 's'
            brick.StopMotor('A');
            brick.StopMotor('B');
            brick.StopMotor('D');
        case 'p'
            brick.MoveMotor('D', 2.5);
        case 'l'
            brick.MoveMotor('D', -2.5);
        case 'q'
            break;
            
    end
end
CloseKeyboard();
