#import "@preview/classy-tudelft-thesis:0.1.0": *
#import "@preview/physica:0.9.6": *
#import "@preview/unify:0.7.1": num, numrange, qty, qtyrange
#import "@preview/zero:0.5.0"
#set par(justify: true)
#set math.equation(
  numbering: "(1)"
  )
#set text(lang: "es")
#show figure.caption: set align(left)
#show figure.caption: set text(size: 0.9em)

== Junturas Josephson de superconductores simétricos ante inversión temporal

En la primera publicación@Ruiz_2022 de la presente tesis, se estudiaron junturas Josephson formadas por superconductores topológicos bidimensionales con simetría de inversión temporal (TRITOPS). El foco fue puesto en calcular la relación corriente a fase de junturas formadas por dos superconductores topológicos (TRITOPS-TRITOPS) y por uno topológico y uno no topológico (TRITOPS-S). Se encontraron peculiaridades en la respuesta de los modos de Majorana de energía cero cuando la diferencia de fase es medio cuanto de flujo $phi.alt=pi$ en las junturas TRITOPS-TRITOPS y en cuantos de flujo enteros $phi.alt=0$ en las junturas TRITOPS-S.

=== Modelos

Las características de los estados de borde Majorana dependen de la naturaleza del apareamiento superconductor en el volumen. Es por eso que se consideraron dos familias de modelos de superconductividad de tipo BCS en 2D. Por un lado se consideraron simetrías de apareamiento antisimétrico en el espacio de tipo _p-wave_, y por otro lado acoplamiento _s$plus.minus$wave_ #footnote[Este mecanismo de acoplamiento es usado para explicar la superconductividad no convencional en superconductores basados en hierro.@Hirschfeld_2011[pp.~8-9] Mientras que el gap no tiene nodos, el acoplamiento superconductor cambia de signo entre diferentes regiones (llamadas pockets de Fermi) del espacio recíproco.@Bang_2017[pp. 3-4]] con interacción espín órbita.

=== Modelos con simetría _p-wave_

Se pueden considerar acoplamiento triplete tanto entre electrones con el mismo espín como con espines opuestos. Además, el parámetro de orden puede ser unidimensional o bidimensional. En forma general, la matriz del Hamiltoniano de Bogoliubov-de Gennes es

$ H_bold("k")^p = xi_bold("k") tau^z sigma_0 + tau^x bold(sigma) dot bold(Delta)_bold("k")^(alpha,beta) $ <eq:Hamiltonian_p_wave>

donde $bold(Delta)_bold("k")^(alpha,beta)$ es una matriz que representa los posibles acoplamientos. Teniendo en cuenta las condiciones de simetría ante inversión temporal y sólo términos lineales y en $sin(k_x)$ y $sin(k_y)$ se tiene:

$ bold(Delta)_bold("k")^(alpha,beta) = Delta_x sin(k_x) bold(upright(n))^alpha + Delta_y sin(k_y) bold(upright(n))^beta $ <eq:pairing_matrix>

== Modelo con acoplamiento _s$plus.minus$wave_ e interacción spin órbita

En 2013, Zhang, Kane y Mele (ZKM) en la referencia @Zhang_2013 propusieron un modelo que permite realizar un superconductor con simetría ante inversión temporal sin la necesidad de interacciones electrón electrón y en ausencia de campos magnéticos. Consiste en un Hamiltoniano BCS con acoplamiento de tipo s local $Delta_0$ y extendido $Delta_1$ e interacción spin órbita de Rashba $lambda$.

$ cal(H)_bold("k")^"ZKM" = xi_bold("k") tau^z sigma^0 + 2 lambda tau^z ( sin k_x sigma^y - sin k_y sigma^x ) + tau^x sigma^0 Delta_bold("k") )  $ <eq:Hamiltonian_ZKM>

con $Delta_bold("k") = Delta_0 + 2 Delta_1 (cos k_x + cos k_y)$. Este acoplamiento podría ser provisto por un superconductor basado en hierro sobre el cual se deposita la capa del semiconductor con interacción Rashba.@Zhang_2013 $Delta_bold(k)$ es un acoplamiento que es singlete porque es simétrico ante el cambio de $bold("k")$ por $-bold("k")$ y es de tipo _s$plus.minus$wave_ porque cambia de signo entre el centro de la zona de Brillouin $bold("k")=(0,0)$ y el borde $bold("k")=(pi,pi)$ cuando $0<|Delta_0|<4|Delta_1|$ como se puede ver en la @fig:ZKM_Fermi_surface. Notar que el Hamiltoniano de la @eq:Hamiltonian_ZKM conserva la simetría de inversión temporal $[ cal(H)_bold("k")^"ZKM", Theta ]=0$ con $Theta=i tau^0sigma^y cal(K)$ y la simetría de partícula agujero#footnote[La simetría de partícula agujero anticonmuta con el Hamiltoniano en primera cuantización (porque convierte partíuculas en agujeros con energías opuestas) pero conmuta con el de segunda cuantización.@Ryu_2010] ${ cal(H)_bold("k")^"ZKM", Xi }=0$ dada por $Xi=tau^y sigma^y cal(K)$.#footnote[$cal(K)$ es el operador de conjugación compleja que opera sobre operadores y vectores de primera cuantización de tal manera que $cal(K) cal(H) cal(K)=cal(H)^*$ y $cal(K)bold("v")=bold("v")^*$.]
#figure(
  image("../Images/ZKM_Fermi_surface.pdf", width: 80%),
  caption: [Signo positivo (negativo) del acoplamiento $Delta_bold("k")$ en rojo (azul) y superficie de Fermi con helicidad positiva (negativa) en líneas punteadas naranjas (verdes) del modelo de Zhang, Kane y Mele. La línea púrpura corresponde a $Delta_("k")=0$. Las flechas negras representan la dirección del spin. Se tomó $Delta_0=-2Delta_1$.]
) <fig:ZKM_Fermi_surface>

El Hamiltoniano de la @eq:Hamiltonian_ZKM se puede diagonalizar #footnote[Una forma de diagonalizar los Hamiltonianos de Bogoliubov-de Gennes $H_bold("k")^("BdG")$ es calcular primero $(H_bold("k")^("BdG"))^2$ usando las propiedades de conmutación de las matrices de Pauli. Las autoenergías de $H_bold("k")^("BdG")$ van a ser la raíz cuadrada de las autoenergías de $(H_bold("k")^("BdG"))^2$ .] obteniéndose el espectro de excitaciones

$ E_bold("k")^("BdG") = plus.minus sqrt([2t(cos(k_x) + cos(k_y)) + mu plus.minus epsilon_bold("k")^"R"]^2 + Delta_bold("k")) , $

donde $epsilon_bold("k")^"R"=2 lambda sqrt(sin^2(k_x) + sin^2(k_y))$ es la energía de Rashba.

Para encontrar las condiciones para la fase topológica, hay que recordar que el gap tiene que tener signos opuestos en las dos superficies de Fermi helicoidales. Entonces se debe mirar dónde el gap se anula. La curva púrpura en la  @fig:ZKM_Fermi_surface corresponde a la línea nodal de $Delta_bold("k")$ cuya expresión es $cos(k_x) + cos(k_y)=-Delta_0/(2Delta_1)$. Sobre ésa línea, las energías son

$ E_bold("k")^("BdG") = plus.minus (mu - epsilon_0 plus.minus epsilon_bold("k")^"R") $
donde $epsilon_0=t Delta_0/Delta_1$. A lo largo de la línea nodal, la energía de Rashba oscila entre entre un valor mínimo $epsilon_"mín"^"R"=2 lambda sqrt(abs(Delta_0/Delta_1)-Delta_0^2/(4Delta_1^2))$ y un valor máximo $epsilon_"máx"^"R"=2 lambda_R sqrt(2-Delta_0^2/(8Delta_1^2))$. Ésto último permite clasificar al sistema según el valor del potencial químico. Si $epsilon^"R"_"mín"<=abs(mu-epsilon_0)<=epsilon^"R"_"máx"$, el nivel de Fermi cruza la línea nodal y lo que se tiene es un superconductor nodal. Si el potencial químico es muy alto de tal manera que $abs(mu-epsilon_0)>epsilon^"R"_"máx"$, el superconductor está completamente gapeado pero en la fase trivial, ya que $Delta_bold("k")$ tiene el mismo signo en las dos superficies de Fermi. Cuando se satisface $abs(mu-epsilon_0)<epsilon^R_"mín"$, el potencial de pairing cambia de signo entre las dos superficies de Fermi y por lo tanto entra en la fase topológica con simetría de inversión temporal. En ésta tesis se tomó $Delta_0=-2Delta_1$ y $mu=epsilon_0$. 

== Hamiltoniano aproximado del modelo ZKM

Es conveniente trabajar con una versión aproximada del Hamiltoniano de la @eq:Hamiltonian_ZKM en el continuo. Para ello se realiza una rotación de los grados de libertad de spin en 90° en forma horaria alrededor del eje $x$ aplicando la matriz de rotación $R=e^(-i pi/4 sigma^x)$. Ésta transformación lleva a reemplazar en la @eq:Hamiltonian_ZKM $sigma^y -> sigma^z$ obteniéndose

$ (cal(H)_bold("k")^"ZKM")' = R cal(H)_bold("k")^"ZKM" R^(-1) = xi_bold("k") tau^z sigma^0 + 2 lambda tau^z ( sin k_x sigma^z - sin k_y sigma^x ) + tau^x sigma^0 Delta_bold("k") ). $<eq:rotated_ZKM_Hamiltonian>

Si se considera $Delta_0=-2Delta_1$ con $lambda, Delta_1>0$, la superficie nodal de la @fig:ZKM_Fermi_surface atraviesa el eje horizontal correspondiente a $k_y=0$ en los puntos $(plus.minus pi/2, 0)$ y las dos bandas tienen un componente de spin en $z$ bien definida con proyecciones $plus.minus 1/2$.

Para $abs(mu+2t)<=2lambda$ hay cuatro puntos de Fermi en el eje $k_x=0$. Se los define yendo de menor a mayor como $-k_"F1"$, $-k_"F2"$, $k_"F2"$ y $k_"F1"$. Para encontrar sus valores, basta con buscar dónde se anula la energía sin acoplamiento superconductor:

$ E_(k_x)(Delta=0) = 0 ==> -(mu +2t)/2 = t cos(k_"F") minus.plus lambda sin(k_"F") $

Usando una propiedad trigonométrica#footnote[La propiedad trigonométrica usada es $A cos(theta) + B sin(theta) = sqrt(A^2 + B^2) cos(theta-phi.alt)$ con $phi.alt=arctan(B/A)$.] se encuentra

$ k_"F(1,2)" = arccos(-(mu+2t)/(2 sqrt(t^2+lambda^2))) + arctan(minus.plus lambda/t) $

Si se linealizara el espectro sin acoplamiento alrededor de cada punto de Fermi, se encuentran partículas que se desplazan hacia la derecha y hacia la izquierda con componente de spin $arrow.t$ y $arrow.b$. En este caso, se linealiza alrededor de $k_x=-pi/2$ a la componente $arrow.t$ y alrededor de $k_x=pi/2$ a la componente $arrow.b$. Éstos puntos son los puntos nodales del potencial de acoplamiento.

#figure(
  image("../Images/ZKM_linealization.pdf", width: 60%),
  caption: [Bandas de energía del Hamiltoniano $(cal(H)_bold("k")^"ZKM")'$ de la @eq:rotated_ZKM_Hamiltonian sin acoplamiento y para $k_y=0$. La región coloreada indica el rango de valores de $mu$ en el cual se desarrolla la fase topológica. Los círculos indican los puntos de Fermi.]
) <fig:ZKM_linealization>
 ++
El término cinético se aproxima

$ sum_(k_x, sigma) xi_(k_x,sigma) c^dagger_(k_x,sigma) c_(k_x,sigma) &= sum_(k_x, sigma) (-2t cos(k_x) - 2t - mu - 2sigma lambda sin(k_x)) c^dagger_(k_x,sigma) c_(k_x,sigma) approx \
&approx  sum_(k_x) (-2t-mu+2lambda-2t (k_x+pi/2))c^dagger_(k_x+pi/2,arrow.t) c_(k_x+pi/2,arrow.t)+ \
&+ (-2t-mu+2lambda+2t (k_x-pi/2)) c^dagger_(k_x-pi/2,arrow.b) c_(k_x-pi/2,arrow.b)= \
&= -sum_(p_x,sigma) delta mu c^dagger_(p_x,sigma) c_(p_x,sigma) $

donde $delta mu=2t+mu-2lambda$, se reemplazó $(k_x+pi/2,arrow.t)->(p_x,arrow.t)$ y $(k_x-pi/2,arrow.b)->(p_x,arrow.b)$ y se despreció la relación de dispersión $-sigma 2t p_x approx 0$. Notar que si $delta mu=0$ el sistema se encuentra entre una fase topológica y trivial.

A su vez, se linealiza el término de pairing $c^dagger_(k_x,arrow.t)c^dagger_(-k_x,arrow.b)$ alrededor de $k_x=-pi/2$ y $c^dagger_(k_x,arrow.b)c^dagger_(-k_x,arrow.t)$ alrededor de $k_x=pi/2$ que son justamente sus puntos nodales:

$ &1/2 sum_(k_x)[2Delta_1 cos(k_x) (c^dagger_(k_x,arrow.t)c^dagger_(-k_x,arrow.b)-c^dagger_(k_x,arrow.b)c^dagger_(-k_x,arrow.t))+h.c.] \
&approx 1/2 sum_(k_x)2Delta_1[(k_x+pi/2) c^dagger_(k_x+pi/2,arrow.t)c^dagger_(-(k_x+pi/2),arrow.b)+(k_x-pi/2) c^dagger_(k_x-pi/2,arrow.b)c^dagger_(-(k_x-pi/2),arrow.t)+h.c.] \
&= 1/2 sum_(p_x) 2Delta_1 p_x [c^dagger_(p_x,arrow.t)c^dagger_(-p_x,arrow.b)+c^dagger_(p_x,arrow.b)c^dagger_(-p_x,arrow.t)+h.c.] $

El término de la interacción spin órbita se linealiza alrededor de $k_y=p_y=0$ obteniéndose

$ -sum_k_y 2lambda sin(k_y) (c^dagger_(k_y,arrow.t) c_(k_y,arrow.b) + c^dagger_(k_y,arrow.b) c_(k_y,arrow.t)) approx -sum_p_y 2lambda p_y (c^dagger_(p_y,arrow.t) c_(p_y,arrow.b) + c^dagger_(p_y,arrow.b) c_(p_y,arrow.t)) $

Finalmente juntando todos los términos se obtiene el siguiente Hamiltoniano de baja energía:

$ cal(H)_bold("p")^((k_y=0)) = -delta mu tau^z sigma^0 + 2Delta_1 p_x tau^x sigma^z - 2 lambda p_y tau^z sigma^x $<eq:ZKM_baja_energía>

que está definido en la base del espinor $(c_(p_x,arrow.t), c_(p_x,arrow.b), c_(p_x,arrow.b)^dagger, -c_(-p_x,arrow.t)^dagger)$ con $(p_x,sigma)=(k_x+sigma pi/2, sigma)$, $p_y=k_y$ y $bold("p")=(p_x,p_y)^T$. El Hamiltoniano de la @eq:ZKM_baja_energía es un Hamiltoniano de Dirac porque es lineal en los momentos $p_x,p_y$ y posee un término de masa de magnitud $-delta mu$.

== Estados de borde en el modelo ZKM

A continuación se deriva la función de onda que satisfacen los estados de borde en una cinta de longitud infinita a lo largo de la dirección $y$. Se considera $Delta>0$ y que la fase topológica corresponde a $mu>0$. El borde a considerar se encuentra en $x=0$. 

#figure(
  block(
    width: 80mm,
    height: 50mm,
    inset: (top: -35pt, bottom: -200pt),
    clip: true,
  image("../Images/Edges.pdf", width: 100%)
  ),
  caption: [Test]
) <fig:Edges>


== Corriente Josephson

El objetivo es mostrar el impacto sobre la corriente Josephson de los diferentes estados de borde correspondiente a las diferentes plataformas posibles para realizar la fase TRITOPS. Para ello consideramos dos superconductores formando una juntura Josephson. La hibridización de los estados de las terminales superconductoras genera la formación de estados de Andreev con energías por debajo del gap superconductor. En la fase topológica estos estados estados son principalmente originados por la hibridización entre estados de borde, lo cual conlleva a peculiaridades en la relación corriente a fase. Analizamos junturas entre dos TRITOPS y entre un TRITOPS y un superconductor ordinario (S).

El Hamiltoniano para el sistema completo incluye los dos superconductores $S_1$ y $S_2$, $H=sum_(k)H_k$ donde

$ H = sum_(alpha=S_1, S_2) ( H_(alpha,k) + H_(J,k) ) $


#bibliography("../thesis.bib")
