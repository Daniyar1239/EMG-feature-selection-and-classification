function mav_wpt_feat = MAVofWPT(x,winsize,wininc,J)
%% allocate memory
datasize       = size(x,1);
numwin         = floor((datasize - winsize)/wininc)+1;
Signals        = zeros(winsize,numwin);
nfCh           = (2^(J+1)-1);   % number of features per channel
Features        = zeros(numwin,nfCh*size(x,2));
%% Start the process and loop along all dimensions (channels)
for i_Sig = 1:size(x,2)
    
    %% A sliding window approach with windows starting and ending points
    st             = 1;
    en             = winsize;
    
    % Assuming that your input signal is continuous, chop it into segments of winsize length
    for i = 1:numwin
        Signals(1:winsize,i) = x(st:en,i_Sig);
        st = st + wininc;
        en = en + wininc;
    end
    
    %% Decomposition levels
    % Number of decomposition levels is set as an input
    % It can also be set using
    % J=wmaxlev(winsize,'Sym5');
    % or J=(log(SamplingFreq/2)/log(2))-1;
    
    %% Perform multisignal wavelet packet transform
    D              = mswpd('col',Signals,'db4',J);   % WPT tree, the actual WP decomposition module using matlab toolbox

    Temp                                       = D{1,1};                          % get first node content
    [nSmp]                                     = size(Temp,2);clear Temp          % number of signals
    feat                                       = zeros(nSmp,2^(J+1)-1);           % allocate memory for features
    [nL,nF]                                    = size(D);                         % get size of WP tree
    index                                      = 1;
    for i=1:nL
        for j=1:nF
            if ~isempty(D{i,j})
                % This is where we extract the features 
                feat(1:nSmp,index)  = mean(abs(D{i,j}))';
                index               = index +1;
            end
        end
    end
    IndX                                        = sum(feat,1);
    IndX                                        = (IndX~=0);
    feat                                        = feat(:,IndX);
    nfCh                                        = size(feat,2);
    Features(:,((i_Sig-1)*(nfCh)+1):i_Sig*nfCh) = feat;
end
%% Make sure you dont have all zero features
IndX                                       = sum(Features);
IndX                                       = (IndX~=0);
mav_wpt_feat                                   = Features(:,IndX);
