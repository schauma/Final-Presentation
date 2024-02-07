

clf
clearvars

function stop = draw_arrow(start,len,angle)

  dir_vec = [cosd(angle),sind(angle)];

  dir_vec = dir_vec./norm(dir_vec);
  stop = start + len.*dir_vec;
  printf("\\draw[->,red,thick](axis cs:%d,%d)--(axis cs: %d,%d);\n",start(1),start(2),stop(1),stop(2));

  plot([start(1),stop(1)],[start(2),stop(2)]);


end

x = linspace(0,3.5,100);



p = 3*[0.2214375788146274e+000,
 8.6718684321144002e-001,
-6.0592686002522655e-001,
 9.6448087431695098e-002];
p = flipud(p);
y = polyval(p, x);
polyout(p,"x")
dy = polyder(p)

#y = -0.5.*(x-2).^3+3 - 1*(x-3).^2;
dy = @(x) -(x-2);

plot(x,y)
grid on
hold on
axis equal
end_pos = draw_arrow([0,0.66],0.5,45);
end_pos = draw_arrow(end_pos,0.5,135);
end_pos = draw_arrow(end_pos,0.5,45);
end_pos = draw_arrow(end_pos,0.5,-45);
end_pos = draw_arrow(end_pos,0.5,45);
end_pos = draw_arrow(end_pos,0.5,-45);
end_pos = draw_arrow(end_pos,0.5,-45);
end_pos = draw_arrow(end_pos,0.5,-45);
end_pos = draw_arrow(end_pos,0.5,-45);
end_pos = draw_arrow(end_pos,0.5,-45);
end_pos = draw_arrow(end_pos,0.5,-45);
end_pos = draw_arrow(end_pos,0.5,45);


