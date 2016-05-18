function quitgame
% closes the current figure and opens up GUI 1. this should reinitialize
% the data structure clearing all saved data
% Pushbuton Propeties:
%       Callback: quit button
%       Tag: quit
close(gcbf)
open('ModeGUIRev2.fig')

end