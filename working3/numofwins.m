function numofwins

data=get(gcbf,'userdata');

    if CheckForWin(data.gameboard)==-1
        data.player2.win=data.player2.win+1;
        disp('your are incrementing player 1 wins')
    elseif CheckForWin(data.gameboard)==1
        data.player1.win=data.player1.win+1;
        disp('you are incrementing player 2 wins')
    end
    set(gcbf,'userdata',data);
    
    P1handle = findobj('tag','P1numofwins');
    set( P1handle,'string',data.player1.win)
    P2handle = findobj('tag','P2numofwins');
    set( P2handle,'string',data.player2.win);

    
end