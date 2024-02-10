# illumination-direction

A way to figure out the direction of incident light (sunlight, is the usual culprit), given the image of a crater.
Pretty useful as a setup for direction-based search.


This is a section of the code used in the article 
`S. Sanyal, S. Palit and A. Banerjee: A hybrid approach to crater detection based on illumination direction, texture analysis and interpolation. 3rd IEEE International Conference on Electronics, Communication, Computer Technologies and Optimization Techniques, 14-15 December 2018, Mysuru, India.  DOI: 10.1109/ICEECCOT43722.2018.9001630 `. If you use the code, please cite it.

---

## Demo
A small demonstration is given in the following video.
![](https://img.youtube.com/vi/watch?v=w_xunNwPHgU/0.jpg)(https://www.youtube.com/watch?v=w_xunNwPHgU)

---
## Requirements
The code uses 
` Quan Wang (2021). Fast Gradient Vector Flow (GVF) (https://www.mathworks.com/matlabcentral/fileexchange/45896-fast-gradient-vector-flow-gvf), MATLAB Central File Exchange.Retrieved April 21, 2021. `
It is downloadable from the mentioned link.
 
 1. MATLAB 2013B or higher.
 2. MEX should be configured for C/C++ compilation

---
## Usage
 
 1. Enter image file location in line 6 of dirnOfLight.m (default image filename is testcase.png)
 2. Run dirOfLight.m 

