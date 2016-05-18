% This function checks a tic-tac-toe board for a win. To do this it sums
% all of the columbs, rows, and diagnals to see how wins. If the sum is 
% equal to 3 Player1 wins. If sum equals -3 computer wins. The function
% returnes -1,1 which indicate who won
%
% 



function player = CheckForWin(GameBoard)


DiagWin1 = GameBoard(1)+GameBoard(5)+GameBoard(9);
DiagWin2 = GameBoard(3)+GameBoard(5)+GameBoard(7);

if any(sum(GameBoard)==3) || any(sum(GameBoard,2)==3)
    player=1;
elseif  any(sum(GameBoard)==-3) || any(sum(GameBoard,2)==-3)
     player=-1;
elseif DiagWin1==-3 || DiagWin2==-3
    player=-1;
elseif DiagWin1==3 || DiagWin2==3
    player=1;
else
    player=0;
    
return
end

