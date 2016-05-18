% purpose: this is an initalization function. it will start data_GameBoard 



player=struct('name','jj','win',zeros(100),'loss',zeros(100),'turn',zeros(1,9));
Data = struct('gameboard',zeros(3,3),'mode','thismode','player1',player,'player2',player);

set(gcbf,'userdata', Data);

