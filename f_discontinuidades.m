%Trazar funciones con discontinuidades
%Para observar la exactitud de una serie de Fourier truncada necesitamos trazarla junto con la función exacta.
%Hay muchos métodos para trazar la función exacta f (t). El siguiente método hace uso de operadores lógicos.



t=-1:.01:6;
%variable para deterinar el tiempo 
fexact=4*(t<=3)-2*(t>=3); 


plot(t,fexact)
%plot(x,y)
%dibuja un vector de abscisas “x” y ordenadas “y”
%-------------------------------------------------------------------------------------------------
%plot(t)
%Si t es un número complejo el comando plot dibuja el punto de coordenadas
%(real(t),imag(t). )