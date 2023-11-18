  ### PUNTUACIONES 
  -- Cambiar 'NO DATA' por string vacio
  -- ----------------------------------
  UPDATE puntuaciones
     SET puntos_imdb='' 
     WHERE puntos_imdb='NO DATA';
 UPDATE puntuaciones
     SET puntos_rotten='' 
     WHERE puntos_rotten='NO DATA';   
 
 # SET sql_mode = "";    

  -- Cambiar puntos a int y float
  -- ----------------------------------
ALTER TABLE puntuaciones
MODIFY COLUMN puntos_rotten SMALLINT;

ALTER TABLE puntuaciones
MODIFY COLUMN puntos_imdb FLOAT;

  ### PELICULAS 
  -- Cambiar año y mes a SMALLINT
  -- ----------------------------------
ALTER TABLE peliculas
MODIFY COLUMN año_estreno SMALLINT;

ALTER TABLE peliculas
MODIFY COLUMN mes_estreno SMALLINT;
     