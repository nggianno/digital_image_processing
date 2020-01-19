
time1=zeros(41,1);
i=1;
time2=zeros(41,1);
for N=50:5:250
        A=rand(N);
        tic
        myConvSpat(A,A);
        time1(i)=toc;
        i=i+1;
end
i=1;
for N=50:5:250
        A=rand(N);
        tic
        myConvFreq(A,A);
        time2(i)=toc;
        i=i+1;
end
w=50:5:250;
plot(w,time1,w,time2);
xlabel('n')
ylabel('time')
legend('sp', 'fr')