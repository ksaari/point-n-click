function [X,G] = pointnclick
%POINTNCLICK Generate 2D points by pointing and clicking with mouse.
%
%Click with the first button of the mouse on the canvas to generate a 
%new point. Press the space bar to change the cluster. Press escape to finish.
%
%[X,G] = POINTNCLICK where
%X = Nx2 matrix where Nth row corresponds to the Nth generated point.
%G = Nx1 matrix of the corresponding classes.
%At most 7 classes are possible. These are labeled as 1,2,...,7. 
%
%Example
% [X, G] = pointnclick
% gscatter(X(1:end, 1), X(1:end, 2), G)


X = [];
axis([0 1 0 1])
hold on

colors = 'krbgymc';
group = 1;
G = [];
fprintf('group: %d\n',group)

while true
	[x,y,but] = ginput(1);
    if but == 32
        group = group+1;
        fprintf('group: %d\n',group)
        continue
    elseif but == 27
    	break
    else
    	plot(x,y,['.' colors(group)],'markersize',20);
    	X = [X; x,y];
    	G(end+1) = group;
    end
end
G = G';
end