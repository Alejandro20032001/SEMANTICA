% R1.- Si el pez tiene la boca pequeña y dientes puntiagudos y vive en
% ríos de muchas partes del mundo ENTONCES estamos hablando de un
% ejemplar del orden de los Ciprinodontiformes.

esCiprinodontiforme(X):- tieneBocaPequena(X), tieneDientesPuntiagudos(X),viveEnRio(X,_).


% R.2.- Si tenemos un individuo del orden de los Ciprinodontiformes y
% que vive en los %ríos de América del Sur y que en el caso de ser macho
% posee Gonopodio %ENTONCES el pez es de la familia de los Poecilidos y
% la hembra es 3 cm. más %grande que el macho.

esPoecilido(X):- esCiprinodontiforme(X), viveEnRio(X,AmericaSur), esMacho(X), tieneGonopodio(X).

%R.3.- Si tenemos un individuo del orden de los Ciprinodontiformes y que vive en los %ríos de América del Sur y que es hembra ENTONCES el pez es de la familia de los %Poecilidos y el macho es 3 cm. más pequeño que la hembra.

esPoecilido(X):- esCiprinodontiforme(X), viveEnRio(X,AmericaSur),esHembra(X).



%R.4.- Si tenemos un individuo de la familia de los Poecilidos que tiene manchas a lo %largo del cuerpo ENTONCES estamos ante un pez de la raza de la Gambusia affinis.


esGambusiaAffinis(X):- esPoecilido(X), tieneManchas(X, _).


%R.5.- Si tenemos un individuo de la familia de los Poecilidos que tiene color gris y %rayas verdes a lo largo del cuerpo ENTONCES tenemos un ejemplar de raza de %Gambusia Punctata.

esGambusiaPunctata(X):- esPoecilido(X), tieneRayasEnElCuerpo(X,Verde), tieneColor(X, Gris).

%R.6.- Si el pez es de tamaño medio, tiene dientes puntiagudos, vive en ríos de todo %el mundo y posee canales laberínticos para respirar fuera del agua ENTONCES %pertenece al orden de los anabatidos.


esAnabatico(X):-




%R.7.- Si el pez es del orden de los anabatidos, es de color azul, tiene rayas rojas y vive en ríos de Asia ENTONCES tenemos un pez de la raza luchadores de Sian.

esLuchadorSian(X):- esAnabatico(X), tieneColor(X, Azul), tieneRayasEnElCuerpo(X,Rojas),viveEnRio(X, Asia).

%R.8.- Si el pez es del orden de los anabatidos, mide 25 cm., no tiene rayas %ENTONCES es una perca trepadora.

esPercaTrepadora(X):-esAnabatico(X), mideCM(X,25), not(tieneRayasEnElCuerpo(X,_)).

%R.9.- Si el pez tiene la boca pequeña, vive en ríos de todo el mundo tiene la cola
%redondeada ENTONCES es un ejemplar del orden de los Ciclidos.

esCiclido(X):- tienBocaPequeña(X), viveEnRio(X, _), colaRedondeada(X).

%R10.- Si el pez es del orden de los Ciclios, vive en los ríos de Africa y es de color %rojo con manchas negras ENTONCES es pez joya.
esJoya(X):- esCiclido(X), viveEnRio(X, Africa), tieneColor(X, Rojo), tieneManchas(X, Negro).
