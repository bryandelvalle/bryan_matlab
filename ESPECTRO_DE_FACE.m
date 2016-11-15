%Representaci�n gr�fica del espectro de amplitud y fase
%Para trazar la amplitud y el espectro de fase de este tren de impulsos necesitamos 
%evaluar los valores de Fn. Debido a la divisi�n por condici�n cero que ocurri� arriba, 
%necesitamos manejar el caso para n = 0 por separado. Hay una serie de m�todos para manejar esto. 
%Un m�todo consiste en evaluar los valores positivo, negativo y cero de n por separado. 
%En este caso trazaremos el espectro para -10 ? n ? 10 utilizando los siguientes comandos de MATLAB.


%----------------------------------------------------------------------------------------------------------------------
%                        EL ESPECTRO DE FACE PUEDE ENTONCES SER ENCONTRADO USANDO :

%                                      stem(numero,angle(funcion))




clear
%Evita las operaciones superpuestas y cierra los hilos anteriores.


num_neg=-10:-1; 
%variables de numeros negativos


num_pos=1:10;  
%variables de numeros positivos


func_neg=(1./(j*num_neg*pi)).*(-3*exp(-j*num_neg*6*pi/7)+2*exp(j*num_neg*2*pi/7)+exp(-j*num_neg*12*pi/7));
%funcion de la exponencial de las series de fourier de numeros negativos


Func_pos=(1./(j*num_pos*pi)).*(-3*exp(-j*num_pos*6*pi/7)+2*exp(j*num_pos*2*pi/7)+exp(-j*num_pos*12*pi/7));
%funcion de la exponencial de las series de fourier de numeros positivos


F0=10/7; 
%funcion final


num=[num_neg, 0, num_pos];
%variable contenedora de numeros = contiene los numeros negativos ; 0 ; numeros positivos 


func=[func_neg, F0, Func_pos]; 
%variable contenedora funciones = contiene las funciones negativas como
%positivas y la funcion final 


stem(num,angle(func))
%La funcion stem traza datos de secuencia discreta
%Traza la secuencia de datos, Y, a los valores especificados por X. Las entradas X e Y deben ser vectores
%o matrices del mismo tama�o. Adem�s, X puede ser un vector de fila o columna e Y debe ser una matriz con 
%filas de longitud (X).
%Si X e Y son ambos vectores, entonces el tallo traza entradas en Y contra entradas correspondientes en X.
%Si X es un vector e Y es una matriz, entonces el tallo traza cada columna de Y contra el conjunto de 
%valores especificados por X, de modo que todos los elementos de una fila de Y se trazan contra el mismo valor.
%Si X e Y son ambas matrices, entonces el tallo traza columnas de Y contra columnas correspondientes de X.
%(NOTA : [X SERIA NUM] Y [Y SERIA abs(func)]) 
%------------------------------------------------------------------------------------------------------------
%angle(func)
%Retorna el �ngulo de fase en radianes de cada elemento de la matriz func con
%elementos complejos. Los �ngulos est�n entre � ?. 



title('Representaci�n gr�fica del espectro de amplitud y fase')
xlabel('n')
ylabel('arg |fn|')
%Podemos agregar t�tulos y etiquetas (como cadenas en argumentos)



 
 
 



