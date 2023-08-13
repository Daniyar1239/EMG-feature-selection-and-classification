function ShEn_dwt_feat = ShEnofDWT(x, winsize, wininc, J)
% J- level of wavelet decomposition
datasize = size(x,1);
Nchannels = size(x,2);
numwin = floor((datasize - winsize)/wininc)+1;

ShEn_dwt_feat = zeros(numwin, (J+1)*Nchannels);

for dims = 1:Nchannels
    x = x(:, dims);
    %% Chop the signal according to a sliding window approach
    % allocate memory
    feat = zeros(winsize, numwin);
    st = 1;
    en = winsize;
    for i = 1:numwin
        feat(1:winsize,i) = x(st:en,:)-mean(x(st:en,:));
        st = st + wininc;
        en = en + wininc;
    end
    %% Multisignal one-dimensional wavelet transform decomposition
    dec = mdwtdec('col', feat, J, 'Sym8');

    if isequal(dec.dirDec,'c')
        dim = 1;
    end
    [cfs,longs] = wdec2cl(dec,'all');
    level = length(longs)-2;

    if dim==1
        cfs = cfs';
        longs = longs';
    end

    numOfSIGs             = size(cfs,1);
    absCFS                = abs(cfs);
    cfs_POW2              = absCFS.^2;
    Energy                = sum(cfs_POW2,2);
    percentENER           = zeros(size(cfs_POW2));
    notZER                = (Energy>0);
    percentENER(notZER,:) = cfs_POW2(notZER,:);%./Energy(notZER,ones(1,num_CFS_TOT));
    %% Pre-define and allocate memory
    tab_ShEn = zeros(numOfSIGs, level+1);

    %% Feature extraction section
    st = 1;
    for k = 1:level+1
        nbCFS                = longs(k);
        en                   = st+nbCFS-1;
        percentENER(:,st:en) = percentENER(:,st:en)./repmat(sum(percentENER(:,st:en),2),1,size(percentENER(:,st:en),2));
        prob                 = percentENER(:,st:en)./repmat(sum(percentENER(:,st:en),2),1,longs(k)) + eps;
        tab_ShEn(:,k)     = -sum(prob.*log(prob),2);
        st = en + 1;
    end
    ShEn_dwt_feat(:,(1:(J+1))+(dims-1)*(J+1)) = tab_ShEn;
end