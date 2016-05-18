
function position=getposition(gameboard)
%Filename: getposition.m
%Purpose: generates a random move for easy mode
%Input: gameboard,3x3 Matrix, the current moves on the board
%Output: position,scalar, random unplayed position
%
%Tested and works finde
%Yikealo Abraha
%5/6/2016


position=randi(9);

gameboard
while gameboard(position)~=0
    
    position=randi(9);
    
end
gameboard
end