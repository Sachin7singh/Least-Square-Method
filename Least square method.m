%Least Square method
clc;
f=@(X,Y)(c+a*x+b*x*x);
x=input('Enter the array of x: ');
y=input('Enter the array of y: ');
n=length(x);

for i=n
    x_2(i)=x(i).^2;
    x_3(i)=x(i).^3;
    x_4(i)=x(i).^4;
    xy(i)=x(i)*y(i);
    x_2y=x_2(i)*y(i);
    
    
end
 sum_x=0;
 sum_y=0;
 sum_xy=0;
 sum_x_2y=0;
 sum_x_2=0;
 sum_x_3=0;
 sum_x_4=0;
 
 for i=1:n
     sum_x=sum_x + x(i);
     sum_y=sum_y + y(i);
     sum_xy=sum_xy + x(i)*y(i);
     sum_x_2y=sum_x_2y+x_2(i)*y(i);
     sum_x_2=sum_x_2 + x(i).^2;
     sum_x_3=sum_x_3+x(i).^3;
     sum_x_4=sum_x_4+x(i).^4;
 end
 
    A=[n sum_x sum_x_2;sum_x sum_x_2 sum_x_3;sum_x_2 sum_x_3 sum_x_4];
    B=[sum_y;sum_xy;sum_x_2y];
    X=linsolve(A,B);
    disp('the value of c ,a and b is');
    X;
    n=[-200:0.01:200];
    m=X(1)+X(2)*n+X(3)*(n.^2);
    plot(n,m,'b')

    xlabel('X')
    ylabel('Y1')
    title('Best fit of Parabola')
    grid on
 

 
 


