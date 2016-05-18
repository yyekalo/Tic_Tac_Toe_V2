function setname

% this will change the player1 to the name entered in name1
player1handle = findobj('tag','player1');
namehandle1 = findobj('tag','name1');
name1 = get(namehandle1,'string');
set(player1handle,'string',name1);

% this will change player2 to the name entered in name2
player2handle = findobj('tag','player2');
namehandle2 = findobj('tag','name2');
name2 = get(namehandle2,'string');
set(player2handle,'string',name2);


end