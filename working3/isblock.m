function computerposition=isblock(GameBoard)


disp('got ot the block fucntion')
DiagWin1 = GameBoard(1)+GameBoard(5)+GameBoard(9);
DiagWin2 = GameBoard(3)+GameBoard(5)+GameBoard(7);


if any(sum(GameBoard)==2)
    columin=find(sum(GameBoard)==2);
    row=find(~GameBoard(:,columin(1)));
    computerposition=(columin(1)-1)*3+row;
    disp(['on the columin part',num2str(computerposition)])
  
elseif any(sum(GameBoard,2)==2)
    result=1;
    row=find(sum(GameBoard,2)==2)
    columin=find(~GameBoard(row(1),:))
    computerposition=(columin-1)*3+row(1);
     disp(['on the row part',num2str(computerposition)])
elseif DiagWin1==2 
    if GameBoard(1)==0
        computerposition=1;
    elseif GameBoard(5)==0
        computerposition=5;
    elseif GameBoard(9)==0
        computerposition=9;
    end
     disp(['on the one diagonal part',num2str(computerposition)])
    
   
elseif DiagWin1==2 
    if GameBoard(7)==0
        computerposition=1;
    elseif GameBoard(5)==0
        computerposition=5;
    elseif GameBoard(3)==0
        computerposition=9;
    end
 
     disp(['on the 7 diagonal part',num2str(computerposition)])
else
   computerposition=0;
end

end