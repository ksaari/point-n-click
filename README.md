Point 'n click
==============

Generate 2D points by pointing and clicking with a mouse.

Click with the first button of the mouse on the canvas to generate a 
new point. Press the space bar to change the cluster. Press escape to finish.

This is useful for creating special toy data sets for machine learning.

`[X,G] = pointnclick`, where
* `X = Nx2` matrix where `N`th row corresponds to the `N`th generated point.
* `G = Nx1` matrix of the corresponding classes.
* At most 7 classes are possible. These are labeled as `1,2,...,7`. 

Example
-------

```matlab
[X, G] = pointnclick
gscatter(X(1:end, 1), X(1:end, 2), G)
```

