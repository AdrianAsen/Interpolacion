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
for j=2:n+1
    for i=j:n+1
        F(i,j)=F(i,j-1);
    end
end

h=X(2)-X(1);
syms x;
P=(x-X(n+1))/h;
Polinomio=Y(n+1);
for k=1:n
    CB = nchoosek(P,k);
    Polinomio=Polinomio+(CB*F(n+1,k+1));
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
