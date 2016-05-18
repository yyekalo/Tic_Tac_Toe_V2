function newgame
Myfig=gcbf;

% enable the game board buttons to on 
for n=1:9
     h = findobj( Myfig, 'Tag', ['cell',num2str(n)]);
        set(h,'String','','Enable','on');    
end

%reset the game board matrix, populate with zeros
data =get(gcbf,'userdata');
data.gameboard= zeros(3,3);
data.turn = 0;
data.toggle = 0;
set(gcbf,'userdata',data);
% update the scoreboard 

disp('new game button pressed')


end