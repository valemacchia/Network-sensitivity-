function [srOut,scOut, equityOut] = shuffleStrenghtSequence(sr,sc, equity,mode)
% shuffle the three input vectors but keep the ordering equal in all three

switch upper(mode)
    case 'EVENODD'
        % shuffle the input vectors dividing it in odd and even components and
        % then vertically gluing them
        srOut = [sr(1:2:end);sr(2:2:end)];
        scOut = [sc(1:2:end);sc(2:2:end)];
        equityOut = [equity(1:2:end);equity(2:2:end)];
    
    case 'RANDOM'
        % randomly shuffle
        newOrd  = randperm(numel(sr))';
        srOut = sr(newOrd);
        scOut = sc(newOrd);
        equityOut = equity(newOrd);
end

end