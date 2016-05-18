function testwin(win)
n = sum(win(:));
if n ==0 % first win of game
    idx = n+1;
    win(idx)=1;
   
else % second win or plus win of game
for x=1
    n = sum(win(:));
    n = n+1; % then increment n by 1
    win(n)=1;    
    
end
end
end