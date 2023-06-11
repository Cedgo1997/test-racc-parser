require_relative 'lexer'
require_relative 'ast'
require_relative 'parser.tab'
require_relative 'helpers'

lexer = Lexer.new
tokens = lexer.tokenize

# Crear una instancia del parser
parser = ArithmeticParser.new
helper = Helpers.new

tokens = helper.extract_tokens(tokens)

# Asignar el array de tokens a la variable @tokens
parser.instance_variable_set(:@tokens, tokens)

# Ejecutar el parser y obtener el AST
ast = parser.do_parse

# Imprimir el AST
puts ast.to_string