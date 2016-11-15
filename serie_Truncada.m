%Trazado de la serie Truncada de Fourier
%Podemos utilizar la serie de Fourier exponencial truncada como una aproximaci�n a la funci�n,
%f (t). Recordemos que siempre debemos utilizar un rango sim�trico de n valores (-n0 ? n ? n0)
%para obtener una funci�n real. Para n0 = 3:


%Tenga en cuenta que las 10 primeras l�neas calculan los valores Fn como se muestra en una secci�n anterior.
%Esto es seguido por un bucle for que eval�a la suma en serie para cada valor de t. 
%Los valores se colocan en un vector fapprox. Las siguientes curvas resultan de este c�digo de MATLAB:





clear
%Evita las operaciones superpuestas y cierra los hilos anteriores. borra
%todo lo anterior


nneg=-10:-1;
%numero negativos


npos=1:10;  
%numeros positivos


n=nneg;     
%contenedor negativo


Fnneg=(1./(1i*n*pi)).*(-3*exp(-1i*n*6*pi/7)+2*exp(1i*n*2*pi/7)+exp(-1i*n*12*pi/7));
%funcion de la exponencial de las series de fourier de numeros negativos


n=npos;      
%contenedor positivo


Fnpos=(1./(1i*n*pi)).*(-3*exp(-1i*n*6*pi/7)+2*exp(1i*n*2*pi/7)+exp(-1i*n*12*pi/7));
%funcion de la exponencial de las series de fourier de numeros positivos


F0=10/7;  
%funcion final


n=[nneg,0,npos];
%variable contenedora de numeros = contiene los numeros negativos ; 0 ; numeros positivos 


Fn=[Fnneg,F0,Fnpos];
%variable contenedora funciones = contiene las funciones negativas como
%positivas y la funcion final 


k=0;
%variable k


for t=-1:.01:6 
k=k+1;
fapprox(k)=sum(Fn.*(exp(1i*n*2*pi*t/7)));
end

%fapprox= es un vector
%-------------------------------------------------------------------------------------------------
%La sentencia for repite un conjunto de sentencias un n�mero predeterminado de veces.
%La sentencia for de MATLAB es muy diferente y no tiene la generalidad de la sentencia for de C/C++/Java. 
%La siguiente construcci�n ejecuta sentencias con valores de i de 1 a n, variando de uno en uno.

%  for i=1:n
%      sentencias
%  end
%-------------------------------------------------------------------------------------------------
% o bien

%      for i=vectorValores
%            sentencias
%      end
%-------------------------------------------------------------------------------------------------
%donde vectorValores es un vector con los distintos valores que tomar� la variable i.
%En el siguiente ejemplo se presenta el caso m�s general para la variable del bucle 
%(valor_inicial: incremento: valor_final); el bucle se ejecuta por primera vez con i=n,
%y luego i se va reduciendo de 0.2 en 0.2 hasta que llega a ser menor que 1, en cuyo caso
%el bucle se termina:

%       for i=n:-0.2:1
%            sentencias
%       end
%-------------------------------------------------------------------------------------------------







t=-1:.01:6;
fexact=4*(t<=3)-2*(t>=3);
plot(t,fapprox,t,fexact); 
%plot(x,y)
%dibuja un vector de abscisas �x� y ordenadas �y�
%-------------------------------------------------------------------------------------------------
%plot(t)
%Si t es un n�mero complejo el comando plot dibuja el punto de coordenadas
%(real(t),imag(t). )
