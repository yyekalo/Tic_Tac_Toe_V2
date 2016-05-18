function savedmode 
% Perpose: savemode is a function that sets the data structur mode to the 
%          selected user mode. it then opens up GU1 2 
% 
% Input:  N/A
% Output:  data.mode, string
% Jesse Barnett
% 5/13/2016
% 
data = get(gcbf,'userdata');
h =get(gcbo,'tag');


switch h
    case 'HumanMode'
       data.mode = 'HumanMode';
    case 'comp_easy'
       data.mode = 'comp_easy';
    case 'comp_medium'
       data.mode = 'comp_medium';
    case 'comp_expert'
        data.mode = 'comp_expert';
    otherwise
        disp('no string detected')
end

close(gcbf)
open('Tic_Tac_toe_GUIRev2.fig')
figure1handler=findobj('Tag','figure1');
set(figure1handler,'userdata',data)

end