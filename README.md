# proyecto-da-promo-Farzana-modulo2-team5-
# BHO 
- Equipo de desarrollo: 
Sara Gomez, Mael Guevara, Andrea Betetta, Elisenda Serrano

- *Herramientas*

Las herramientas que el equipo de desarrollo ha seleccionado para la extracción de datos:
- Selenium
Para la extracción de películas por años, datos de las películas, datos de intérpretes, puntuaciones en IMDB y RottenTomatoes
     
- Beautiful Soup

Para la tabla de Oscars desde Wikipedia

- *Estructura*

Hemos utilizado MySQL con Workbench para para generar la estructura. 
Nuestra Tabla Principal es Peliculas, extraída desde un *.csv*.
De la información extraída decidimos generar otras dos tablas secundarias para facilitar la lectura y la normalización de las BBDD. 

Las tablas secundarias: 
- Guionistas por película
- Directores por película
- Puntuaciones (IMDB + RottenTomatoes)
- Oscars 

- *Sobre la Insercción de los datos en la base de datos*

Se ha realizado una inserción sin correlacionar las tablas, solo se ha usado Primary Key. 

- *Queries que se han completado*
  El usuario que se encuentre con ese repositorio deberaá tener en cuenta que se ha decidio optar por una selección de 1000 películas en un rango de 1990-2023 y de género Drama. 

    - ¿Qué intérpretes han recibido más premios oscars?
        - ¿Qué actores?
        - ¿Qué actrices?
    - ¿En qué año se estrenaron más películas?
    - ¿En qué año se estrenaron más cortos?
    - ¿Qué año tiene mejores puntuaciones en IMDB y Rotten Tomatoes?
    - ¿Cuál es la película o películas mejor valoradas en IMDB?
    - ¿Cuál es la película o películas mejor valoradas en IMDB y Rotten Tomatoes?



**NEXT-STEPS para la presentación [Antes de terminar el repo: borrar]**

Respecto a la muestra de películas, que en este primer ensayo han sido 1000, nuestro siguiente objetivo sería ampliar la muestra tanto en número de películas como por géneros de estas películas. 

Respecto a los premios que hemos considerado, sería interesante ampliar el tipo de Premios para Películas, no solo considerar los Oscar, como por ejemplo: Globos de Oro, Palmas de Oro, Baftas, Premios Goya, Sundance, Cannes, y otros. 
Así mismo, también para cortos. 

La muestra que tenemos no es suficientemente grande, por lo que ha determinado la forma de hacer las queries, las cuales estan generadas con métodos más simples. 
Además, no hemos podido conectarlas mediente foreign keys, este sería un paso importante para continuar con nel proyecto. 


