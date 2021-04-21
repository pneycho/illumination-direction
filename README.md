# dirn_of_light_2D
If you use the code, please cite
`S. Sanyal, S. Palit and A. Banerjee: A hybrid approach to crater detection based on illumination direction, texture analysis and interpolation. 3rd IEEE International Conference   on Electronics, Communication, Computer Technologies and Optimization Techniques, 14-15 December 2018, Mysuru, India.  DOI: 10.1109/ICEECCOT43722.2018.9001630 `

This is a small section of the code used in the above article, but its one I'm quite proud of, so...

Given a 2D image of a crater, the output is the direction of incident light.

A small demonstration is given in the following video.
[![Incident light direction on a crater](https://img.youtube.com/vi/watch?v=w_xunNwPHgU/0.jpg)](https://www.youtube.com/watch?v=w_xunNwPHgU)


The code also uses 
` Quan Wang (2021). Fast Gradient Vector Flow (GVF) (https://www.mathworks.com/matlabcentral/fileexchange/45896-fast-gradient-vector-flow-gvf), MATLAB Central File Exchange.Retrieved April 21, 2021. `
It is downloadable from the mentioned link.

 PRE-REQUISITES:
 
 1. MATLAB 2013B or higher.
 2. MEX should be configured for C/C++ compilation
 
 HOW TO USE:
 
 1. Enter image file location in line 6 of dirnOfLight.m (default image filename is testcase.png)
 2. Run dirOfLight.m 

