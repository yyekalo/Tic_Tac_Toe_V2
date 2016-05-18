function easymode(position)

data = get(gcbf,'Userdata');
gameboard=data.gameboard;
if CheckForWin(data.gameboard)==0
    
    disp('we got here')
    set(gcbo,'String','X','Enable','off');
    data.gameboard(position)=1;
    
    %This makes sure the computer doesnt play after you win
    if 0==CheckForWin(data.gameboard)
        
        computerposition=getposition(data.gameboard);
        data.gameboard(computerposition)=-1;
        
        %represent each cell where you can use to modify properties
        h = findobj( gcbf, 'Tag', ['cell',num2str(computerposition)]);
        set(h,'String','O','Enable','off');
        
    end
end

set(gcbf,'userdata',data)
if CheckForWin(gameboard) == 0
    numofwins;
end

end

