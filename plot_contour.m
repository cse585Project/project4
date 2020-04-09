function plot_contour(I,res,v)

figure();
Irgb = cat(3,I,I,I);
image(Irgb)
hold all
[edge,w]=contour(res,[v,v]);
w.LineWidth=3;

end