function move=winmove(GameBoard)

DiagWin1 = GameBoard(1)+GameBoard(5)+GameBoard(9);
DiagWin2 = GameBoard(3)+GameBoard(5)+GameBoard(7);


if any(sum(GameBoard)==-2)
    
    columin=find(sum(GameBoard)==-2);
    row=find(~GameBoard(:,columin(randi(length(columin)))));
    move=(columin(1)-1)*3+row;  
    
elseif any(sum(GameBoard,2)==-2)
    
    row=find(sum(GameBoard,2)==-2);
    columin=find(~GameBoard(row(randi(length(row))),:));
    move=(columin-1)*3+row(1);
    
elseif DiagWin1==-2 
    
    if GameBoard(1)==0
        move=1;
    elseif GameBoard(5)==0
        move=5;
    elseif GameBoard(9)==0
        move=9;
    end
    
elseif DiagWin2==-2 
    
    if GameBoard(7)==0
        move=7;
    elseif GameBoard(5)==0
        move=5;
    elseif GameBoard(3)==0
        move=3;
    end
 
else
   move=0;
end

end