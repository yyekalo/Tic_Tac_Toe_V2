function pick=randPick(matrix,gameboard)

leng=length(matrix)

position=randi(leng)
count=0
while gameboard(matrix(position))~=0 || count <5000
   position=randi(leng) 
   count=count+1;
  
end

if gameboard(matrix(position))==0
pick=matrix(position)
else
   pick= getposition(gameboard);
end

end