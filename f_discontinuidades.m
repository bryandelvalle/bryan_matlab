%Trazar funciones con discontinuidades
%Para observar la exactitud de una serie de Fourier truncada necesitamos trazarla junto con la funci�n exacta.
%Hay muchos m�todos para trazar la funci�n exacta f (t). El siguiente m�todo hace uso de operadores l�gicos.



t=-1:.01:6;
%variable para deterinar el tiempo 
fexact=4*(t<=3)-2*(t>=3); 


plot(t,fexact)
%plot(x,y)
%dibuja un vector de abscisas �x� y ordenadas �y�
%-------------------------------------------------------------------------------------------------
%plot(t)
%Si t es un n�mero complejo el comando plot dibuja el punto de coordenadas
%(real(t),imag(t). )