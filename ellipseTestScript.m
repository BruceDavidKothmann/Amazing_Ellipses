clear all; close all;
%
% BDK: 2019-07-02
% simple test of the ellipse class
%
E = ellipse(2, 5, 1, 4, [0:pi/1000:1.5*pi], 'g');
E.render