% purpose: this is an initalization function. it will start data_GameBoard 


player=struct('name','jj','win',0,'loss',zeros(100));
Data = struct('gameboard',zeros(3,3),'mode','thismode','turn',0,'toggle',0,'player1',player,'player2',player);

set(gcbf,'userdata', Data);
%disp('intialezed the mode figure')