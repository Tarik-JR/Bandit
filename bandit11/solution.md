INSTRUCTION:
The password for the next level is stored in the file data.txt, where all lowercase (a-z) and uppercase (A-Z) letters have been rotated by 13 positio

SOLUTION:
we use the tr command that stands for translate. an amazing command actually.
syntax: tr [OPTION]... STRING1 [STRING2]
STRING1  and STRING2 specify arrays of characters ARRAY1 and ARRAY2 that control the action.

our command: cat data.txt | tr 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz' 'NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm'
*
OR
cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'
The password is 7x16WNeHIi5YkIhWsfFIqoognUTyj9Q4

The password is 7x16WNeHIi5YkIhWsfFIqoognUTyj9Q4
KNOWLEDGE:
we use the tr command that stands for translate. an amazing command actually.
# Translate characters: run replacements based on single characters and character sets.
syntax: tr [OPTION]... STRING1 [STRING2]
STRING1  and STRING2 specify arrays of characters ARRAY1 and ARRAY2 that control the action.
echo {a..z} {A..Z}  {n..z} {a..m} {N..Z} {A..M}
a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z n o p q r s t u v w x y z a b c d e f g h i j k l m N O P Q R S T U V W X Y Z A B C D E F G H I J K L M

