function [ out ] = skew( A )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

out = (A - permute(A, [2 1 3]))/2;

end

