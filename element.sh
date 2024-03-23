#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"
# ATOMIC_NUMBER
# NAME
# SYMBOL
# TYPE
# ATOMIC_MASS
# MELTING_POINT
# BOILING_POINT
# NAME='3'

  if [[ $1 ]]
  then
  X=$1

if [[ $X =~ ([0-9]+) ]]
then
  read ATOMIC_NUMBER NAME TYPE SYMBOL ATOMIC_MASS MELTING_POINT_CELSIUS BOILING_POINT_CELSIUS <<< $(echo $($PSQL "select atomic_number, name, type, symbol, atomic_mass, melting_point_celsius,boiling_point_celsius from elements inner join properties using (atomic_number) inner join types using(type_id) where atomic_number=$X") | sed 's/|/ /g')
else 
    
    read ATOMIC_NUMBER NAME TYPE SYMBOL ATOMIC_MASS MELTING_POINT_CELSIUS BOILING_POINT_CELSIUS <<< $(echo $($PSQL "select atomic_number, name, type, symbol, atomic_mass, melting_point_celsius,boiling_point_celsius from elements inner join properties using (atomic_number) inner join types using(type_id) where symbol='$X'") | sed 's/|/ /g')
    if [[ -z $NAME ]]
    then
    read ATOMIC_NUMBER NAME TYPE SYMBOL ATOMIC_MASS MELTING_POINT_CELSIUS BOILING_POINT_CELSIUS <<< $(echo $($PSQL "select atomic_number, name, type, symbol, atomic_mass, melting_point_celsius,boiling_point_celsius from elements inner join properties using (atomic_number) inner join types using(type_id) where name='$X'") | sed 's/|/ /g')
    fi


    # select * from elements inner join properties using (atomic_number) inner join types using(type_id);

fi
  if [[ -z $NAME ]]
  then
    echo "I could not find that element in the database."
  else
    echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING_POINT_CELSIUS celsius and a boiling point of $BOILING_POINT_CELSIUS celsius."
  fi
  else
  
  echo "Please provide an element as an argument."
fi


