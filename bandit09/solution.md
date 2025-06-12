INSTRUCTION:

The password for the next level is stored in the file data.txt in one of the few human-readable strings, preceded by several ‘=’ characters.

SOLUTION:

syntax:    cat data.txt | strings | grep "=== *"
strings command: Find printable strings in an object file or binary. basically katl9a lik ay combinaition of characters that consists of [a-z][A-Z][0-9] that is at least 3 characters_by default_(can change this)
I added the grep "=== *" to find the ones with ==
password is : FGUW5ilLVJrxX9kMYMmlN4MgbpfMiqey


KNOWLEDGE:
basically strings command can find any combaination of characters that consists of [a-z][A-Z][0-9]

