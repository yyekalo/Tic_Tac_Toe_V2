
function human_v_human
% Purpose this function uses tags from a GUI to display X and O on the 
%         game board
% 
% variables:
%        turn: scalar
%   postition: scalar
% tested 5/12/2016 and works
% Jesse Barnett 

data = get(gcbf,'userdata');
gameboard = data.gameboard;
m = get(gcbo,'Tag'); % the tag is Celln
position = str2num(m(5)); % this is the index locatin in 3x3 matrix

% toggeling between X and 0   
if CheckForWin(gameboard) == 0
    if data.turn == 0
        data.gameboard(position)= 1; %3x3 matrix
        set(gcbo,'String','X','Enable','off');
        data.turn=~data.turn;        
    elseif data.turn == 1
        data.gameboard(position) = -1;
        set(gcbo,'String','O','Enable','off');
        data.turn=~data.turn;
    end    
    

if CheckForWin(gameboard)==1
    disp('player X wins!')
    numofwins;
elseif CheckForWin(gameboard)==-1
    disp('player 0 wins!')
    numofwins;    
end
end
set(gcbf,'userdata',data);
if CheckForWin(gameboard) == 0
    numofwins;
end
return
end
