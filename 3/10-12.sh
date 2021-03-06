#!/bin/bash
# Два вапианта оформления цикла.

echo

# Стандартный синтаксис.
for a in 1 2 3 4 5 6 7 8 9 10
do
  echo -n "$a "
done

echo; echo

# +==========================================+

# А теперь C-подобный синтаксис.

LIMIT=10

for ((a=1; a <= LIMIT ; a++))  # Двойные круглые скобки и "LIMIT" без "$".
do
  echo -n "$a "
done                           # Конструкция заимствована из 'ksh93'.

echo; echo

# +=========================================================================+

# Попробуем и C-шный оператор "запятая".

for ((a=1, b=1; a <= LIMIT ; a++, b++))  # Запятая разделяет две операции, которые выполняются совместно.
do
  echo -n "$a-$b "
done

echo; echo

exit 0

