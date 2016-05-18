function computerposition=isblock(GameBoard)



DiagWin1 = GameBoard(1)+GameBoard(5)+GameBoard(9);
DiagWin2 = GameBoard(3)+GameBoard(5)+GameBoard(7);


if any(sum(GameBoard)==2)
    
    columin=find(sum(GameBoard)==2);
    row=find(~GameBoard(:,columin(randi(length(columin)))));
    computerposition=(columin(1)-1)*3+row;
     
elseif any(sum(GameBoard,2)==2)
  
    row=find(sum(GameBoard,2)==2);
    columin=find(~GameBoard(row(randi(length(row))),:));
    computerposition=(columin-1)*3+row(1);
    
elseif DiagWin1==2 
    
    if GameBoard(1)==0
        computerposition=1;
    elseif GameBoard(5)==0
        computerposition=5;
    elseif GameBoard(9)==0
        computerposition=9;
    end
    
elseif DiagWin2==2 
    
    if GameBoard(7)==0
        computerposition=7;
    elseif GameBoard(5)==0
        computerposition=5;
    elseif GameBoard(3)==0
        computerposition=3;
    end
 
else
   computerposition=0;
end

end