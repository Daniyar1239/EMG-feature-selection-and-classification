function D = mswpd(dirDec,S,h,J)
N = size(S,1);
if J > floor(log2(N))
  error('Too many levels.');
% elseif rem(N,2^(J-1))
%   error('Signal length must be a multiple of 2^%i.',J-1);
end
D{1,1} = S;
% For each level in the decomposition
% (starting with the second level).
for j = 1:J
  %width = N/2^(j-1);     % Width of elements on j'th level.
  index = 1;
  % For each pair of elements on the j'th level.
  for k = 1:2^(j-1)
   %Interval = [1+(k-1)*width:k*width];
   T = D{j,k};
   dec = mdwtdec(dirDec,T,1,h);
   D{j+1,index} = dec.ca; index = index+1;
   D{j+1,index} = dec.cd{1};index = index+1;
  end
end
end