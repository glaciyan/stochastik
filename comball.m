function [outArr] = comball(varargin)
narginchk(1,Inf);
argc = nargin;
argv = varargin(1:argc);

ii = argc:-1:1; % invertiert

[outArr{ii}] = ndgrid(argv{ii}) ;
outArr = reshape(cat(argc+1,outArr{:}), [], argc) ;
end
