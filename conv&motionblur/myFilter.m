function [imOut] = myFilter(imX,aMask)

if (ndims(imX)<=2) && (ndims(aMask)<=2)
    imOut = myConvSpat(imX,aMask);
elseif (ndims(imX) >2) && (ndims(aMask)<=2)
    imOut(:,:,1) = myConvSpat(imX(:,:,1),aMask);
    imOut(:,:,2) = myConvSpat(imX(:,:,2),aMask);
    imOut(:,:,3) = myConvSpat(imX(:,:,3),aMask);
elseif (ndims(imX) >2) && (ndims(aMask)>2)
    imOut(:,:,1) = myConvSpat(imX(:,:,1),aMask(:,:,1));
    imOut(:,:,2) = myConvSpat(imX(:,:,2),aMask(:,:,2));
    imOut(:,:,3) = myConvSpat(imX(:,:,3),aMask(:,:,3));
elseif (ndims(imX)<=2) && (ndims(aMask)>2)
    S = 'Sorry, cannot filter that.'
    imOut = S;
end


