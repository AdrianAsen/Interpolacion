function p=interpolacionLagrange
n= input('cantidad de puntos: ');
for i=1:n
    X(i)=input('ingrese x: ');
    f(i)=input('ingrese y: ');
end
syms x;
p=0;

for i=1:n
    L=1;
    for j=1:n
        if(i~=j)
            L=L*(x-X(j))/(X(i)-X(j));
        end
    end
    p=p+L*f(i)
   
end
p=expand(p);
pretty(p);

x=input('ingrese el valor de x a interpolar,x=');
vi=eval(p);
fprintf('el valor interpolado es %.5f\n',vi);

    fplot(p,'k-','LineWidth',2);%Grafica la función de color negro y grosor 2
    title('Grafico '); hold on; grid on; %Título de la función.
    axis([-10 10 -10  10])
    line([-10 10],[0 0],'Color','k','LineStyle','--'); %Marca el eje X.
    line([0 0],[-10 10],'Color','k','LineStyle','--'); %Marca el eje Y.
    xlabel('Eje X') ;
    ylabel('Eje Y') ;
