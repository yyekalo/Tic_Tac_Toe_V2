function wins(winner)
%Perpose this function keeps track of the number of wins each player has.
%it updates the user data and ouputs the number of wins to a gui. 
%
% Inpute: winner, scalar, 1, -1, or 0
% Text box:
%       Tag: P1numofwins,P2numofwins
%       Callback: locate in side of buttonPressed
% Jesse Barnett

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% getting the user data
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
data = get(gcbf,'userdata');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% getting player1 or player2 data matrix
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if winner == 1
    win = data.player1.win; % this is the win matrix       
elseif winner == -1
    win = data.player2.win; % this is the win matrix    
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% storing win in the win matrix
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
n = sum(win(:));
if n ==0 % first win of game
    idx = n+1;
    win(idx)=1;
else % second win or plus win of game
    for x=1
        n = sum(win(:));
        n = n+1; % then increment n by 1
        win(n)=1;        
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% updating the data structure
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if winner == 1
     data.player1.win = win;
elseif winner == -1
     data.player2.win = win;
end
% pushing data to gui
P1handle = findobj('tag','P1numofwins');
P2handle = findobj('tag','P2numofwins');

set( P1handle,'string',num2str(sum(data.player2.win(:))) );
set( P2handle,'string',num2str(sum(data.player1.win(:))) );
set(gcbf,'userdata',data)
% for debugging 
% disp(['this is player1 wins ',num2str(sum(data.player1.win(:)))])
% disp(['this is player2 wins ',num2str(sum(data.player2.win(:)))])

end