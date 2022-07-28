n=input('ingrese el grado del polinomio, n=');
disp('ingrese los puntos');
for i=1:n+1
    fprintf('x%.0f=',i-1);
    X(i)=input(' ');
    fprintf('y%.0f=',i-1);
    Y(i)=input(' ');
end


F=zeros(n+1);
F(:,1)=Y;
U=zeros(n-1);
a=n;
for j=2:n+1
    for i=1:a
        F(i,j)=F(i+1,j-1)-F(i,j-1);     
    end
    for k=1:a-1
        U(k,j-1)=(F(k,j)+F(k+1,j))/2;     
    end
    a=a-1;
end
Polinomio=0;
Productorio=1;
a=n+1;
r=3;
i=1;
V=zeros(n+1);
h=X(2)-X(1);
syms x;
if (rem(n+1,2)==0)
    P=(x-X((n+1)/2))/h;
else
    P=(x-X((n+2)/2))/h;
end
P2=P*P;
for j=1:n+1    
    if(rem(j,2)~=0)
        if(j==1)
            V(i)=F((a+1)/2,j);
            i=i+1;
            Polinomio=Polinomio+F((a+1)/2,j);
        else
            V(i)=F((a+1)/2,j);
            i=i+1;
            for l=0:j-r
                Productorio=Productorio*(P2-l^2);
            end
            %AUX=symprod(P2-k^2,k,0,j-r)/factorial(j-1);
            AUX=Productorio/factorial(j-1);
            Polinomio=Polinomio+AUX*F((a+1)/2,j);
        end
        if (j~=n+1)
            if(j==1)
                V(i)=U((a-1)/2,j);
                i=i+1;
                Polinomio=Polinomio+P*U((a-1)/2,j);
            else
                V(i)=U((a-1)/2,j);
                i=i+1;
                CB = nchoosek(P+j-r+1,j);
                Polinomio=Polinomio+CB*U((a-1)/2,j);
            end
        end
        r=r+1;
    end
    a=a-1;
end

disp('La matriz de diferencias divididas es:');
disp(F);
disp('El polinomio de newton es');

Polinomio=expand(Polinomio);
pretty(Polinomio);

x=input('ingrese el valor de x a interpolar,x=');
vi=eval(Polinomio);
fprintf('el valor interpolado es %.5f\n',vi);

fplot(Polinomio,'k-','LineWidth',2);%Grafica la función de color negro y grosor 2
    title('Grafico '); hold on; grid on; %Título de la función.
    %axis([-10 10 -10  10])
    line([-10 10],[0 0],'Color','k','LineStyle','--'); %Marca el eje X.
    line([0 0],[-10 10],'Color','k','LineStyle','--'); %Marca el eje Y.
    xlabel('Eje X') ;
    ylabel('Eje Y') ;
