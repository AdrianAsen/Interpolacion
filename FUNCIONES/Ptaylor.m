function taylor
%Valores de Entrada:
syms x;
a= input('El valor de a es: ');
N0=input('El orden del polinomio: ');
f=input('La funcion es: ');
T=subs(f,a);
for k=1:N0
    %Se repetira N0 veces hasta llegar al orden del polinomio
    df=diff(f);
    %calculamos la derivada de la funcion
    T=T+subs(df,a)*((x-a)^k)/factorial(k);
    %sera donde se guarde nuestro polinomio
    f=df;
    %hacemos que la derivada de f sea f para asi
    %en la iteracion yr derivando ciclicamente y
    %la primera, segunda....,nesima-derivada.
end
pretty(T);

x=input('ingrese el valor de x a interpolar,x=');
vi=eval(T);
fprintf('el valor interpolado es %.5f\n',vi);


fplot(T,'k-','LineWidth',2);%Grafica la función de color negro y grosor 2
    title('POLINOMIO '); hold on; grid on; %Título de la función.
    %axis([-10 10 -10  10])
    line([-100 100],[0 0],'Color','k','LineStyle','--'); %Marca el eje X.
    line([0 0],[-100 100],'Color','k','LineStyle','--'); %Marca el eje Y.
    xlabel('Eje X') ;
    ylabel('Eje Y') ;
