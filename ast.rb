class Assignment
    # El metodo initialize toma dos argumentos: var y val
    def initialize(var, val)
      @var = var  # Variable a la que se asigna
      @val = val  # Valor que se asigna a la variable
    end
  
    # Metodo para mostrar la asignacion
    def to_string
      "ASIGNACION\n" +
      "  - var: #{@var}\n" +
      "  - val: #{@val.to_string}"
    end
end


class ArithmeticBinary
    # El constructor recibe el operador y los operandos
    def initialize(operator, left, right)
      # Se asignan los atributos
      @operator = operator
      @left = left
      @right = right
    end
  
    # Un método para mostrar la expresión binaria:
    def to_string
      "ARITMETICA_BIN\n" +
      "  - operador: #{@operator}\n" +
      "  - operando izquierdo: #{@left}\n" +
      "  - operando derecho: #{@right}"
    end
end