function mediummode(position)


data = get(gcbf,'Userdata');
gameboard=data.gameboard;

if CheckForWin(data.gameboard)==0
    
   
    set(gcbo,'String','X','Enable','off');
    data.gameboard(position)=1;
    
    if CheckForWin(data.gameboard)==0
        if  isblock(data.gameboard)
            
            computerposition=isblock(data.gameboard);
        else
            
            computerposition=getposition(data.gameboard);
            
        end
        
        data.gameboard(computerposition)=-1;
        h = findobj( gcbf, 'Tag', ['cell',num2str(computerposition)]);
        set(h,'String','O','Enable','off');
    end
    
    
    set(gcbf,'userdata',data)
    
end
if CheckForWin(gameboard) == 0
    numofwins;
end
end

