
function run
% perpose run takes in savedData which is the saved game mode slected by
%         the user. it then determines which game mode function to call. 
%
% input:  savedData, string
% output: a game mode, function 
% Tested: working 5/13/2015 
% Jesse Barnet
% data = get(gcbf,'userdata');% this is the gameboard figure 
% myhandle = findall(0,'tag','comp_easy');
% myMode = get(myhandle,'string');
% data.mode = myMode;
% data.mode    % this will only output the mode for property 'tag' = comp_easy

% selectedmode = data.mode;% this is a string 
% choice = menu('pick a mode','Human Vs Human','Easy','Medium','Expert');
% if choice ==1
%     disp('you will run human vs human')
% elseif choice ==2
%     disp('you wil run easy mode')
% elseif choice ==3
%     disp('you will run medium')
% elseif choice ==4
%     disp('you will run expert')
% end
%   
data= get (gcf,'userdata')
end
