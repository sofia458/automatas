from antlr4 import *
from ExprLexer import ExprLexer

lexer = ExprLexer(InputStream(input("? ")))

tokens = CommonTokenStream(lexer)
tokens.fill()

for token in tokens.tokens:
    print("Texto:", token.text)
    print("Tipo número:", token.type)

    if token.type == Token.EOF:
        print("Nombre token: EOF")
    else:
        print("Nombre token:", lexer.symbolicNames[token.type])

    print("Línea:", token.line)
    print("Columna:", token.column)
    print("Inicio:", token.start)
    print("Fin:", token.stop)
    print("Índice:", token.tokenIndex)
    print("Canal:", token.channel)
    print("------------------")