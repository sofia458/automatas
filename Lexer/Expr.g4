// Nombre de la gramática (del archivo)
// El archivo debe llamarse igual que la gramática: Expr.g4
grammar Expr;

// Regla principal de la gramática.
// Indica que la entrada completa debe ser una expresión y después debe terminar el archivo
// EOF significa "End Of File", es decir, el final de la entrada
root : expr EOF ;

// Regla para definir una expresión
expr : expr MAS expr | NUM ;

// Token para reconocer números enteros positivos
NUM : [0-9]+ ;

// Token para reconocer el símbolo de suma
MAS : '+' ;

// Token para reconocer espacios en blanco y saltos de línea
// -> skip indica que esos caracteres se ignoran
WS : [ \t\r\n]+ -> skip ;