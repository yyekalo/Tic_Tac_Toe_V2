function expertmode(position)
data = get(gcbf,'Userdata');
gameboard=data.gameboard;
disp('this function expertmood called')
if CheckForWin(data.gameboard)==0
    set(gcbo,'String','X','Enable','off');
    data.gameboard(position)=1;
    
    
    diagonal1=data.gameboard(9)+data.gameboard(1);
    diagonal2=data.gameboard(7)+data.gameboard(3);
    diagonals=[1,7,3,9];
    centers=[2,8,6,4];
    
   if CheckForWin(data.gameboard)==0
       
      disp('got inside the if statment')
      if winmove(data.gameboard)~=0
          
         disp('This is it winmove')
         computerposition=winmove(data.gameboard);
           
      elseif isblock(data.gameboard)~=0
          
          disp('isblock')
           computerposition=isblock(data.gameboard);
    
      elseif data.gameboard(5)==0
          
          disp('five')
           computerposition=5;
           
      elseif diagonal1==2 || diagonal2==2
            computerposition=randPick(centers,data.gameboard);
           
      elseif randPick(diagonals,data.gameboard)
          computerposition=randPick(diagonals,data.gameboard);
      elseif randPick(centers,data.gameboard)
           computerposition=randPick(centers,data.gameboard); 
      else 
          computerposition=getposition(data.gameboard)
      end
       
       disp(['###############',num2str(computerposition),'###################'])
        h = findobj( gcbf, 'Tag', ['cell',num2str(computerposition)]);
        set(h,'String','O','Enable','off');
        
        data.gameboard(computerposition)=-1;
        data.gameboard
        
        
   end
     set(gcbf,'userdata',data)
end

if CheckForWin(gameboard) == 0
    numofwins;
end
end