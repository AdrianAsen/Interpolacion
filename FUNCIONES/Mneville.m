n=input('ingrese el grado del polinomio, n=');
disp('ingrese los puntos');
for i=1:n+1
    fprintf('x%.0f=',i-1);
    X(i)=input(' ');
    fprintf('y%.0f=',i-1);
    f(i)=input(' ');
end

for i=1:n+1
    Q(i,1)=f(i);
end

%algoritmo
for j=2:n+1
    for i=j:n+1
        Q(i,j)=(((X(i)-X(i-j+1))*Q(i,j-1))-((X(j)-X(i))*Q(i-1,j-1)))/(X(i)-X(i-j+1));
    end
end
disp('La matriz:');
disp(Q);

syms x;
fx=Q(1,1);
P=1;
for i=1:n
    P=P*(x-X(i));
    fx=fx+P*Q(i+1,i+1);
end
fx=expand(fx);
pretty(fx);

x=input('ingrese el valor de x a interpolar,x=');
vi=eval(fx);
fprintf('el valor interpolado es %.5f\n',vi);

fplot(fx,'k-','LineWidth',2);%Grafica la función de color negro y grosor 2
    title('Grafico '); hold on; grid on; %Título de la función.
    axis([-10 10 -10  10])
    line([-10 10],[0 0],'Color','k','LineStyle','--'); %Marca el eje X.
    line([0 0],[-10 10],'Color','k','LineStyle','--'); %Marca el eje Y.
    xlabel('Eje X') ;
    ylabel('Eje Y') ;

