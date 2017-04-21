function [ int_values ] = vraag3_func( func,N,Int )

rand_num=(rand(N,1)-0.5).*2;
func_values=func(rand_num);
if(N>10000)   
    int_values=zeros(N,1);
    for i=1:N
        int_values(i)=sum(func_values(1:i))/i;
    end
    loglog(abs(int_values.*2-Int)/Int,'*');
else
    A=(1:N)';
    A=repmat(A,1,N);
    A=1./A;
    A = tril(A);
    loglog(abs((A*func_values).*2-Int)./Int);
end

end


