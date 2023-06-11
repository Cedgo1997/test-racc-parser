class Helpers
    def extract_tokens(input)
        # Crear un array vacío para almacenar los tokens
        tokens = []

        # Dividir el input por espacios
        input.split.each do |token|
            # Extraer el tipo y el valor del token usando una expresión regular
            if token =~ /Tk(\w+)\((.*)\)/
            # Convertir el tipo a un símbolo y el valor a un número o una cadena según corresponda
            type = "Tk#{$1}".to_sym
            value = $2.to_i.to_s == $2 ? $2.to_i : $2[1..-2]
            else
            # Si el token no tiene paréntesis, usar el mismo token sin Tk como valor
            type = token.to_sym
            value = token[2..-1]
            end

            # Añadir el token al array de tokens
            tokens << [type, value]
        end

        # Añadir el token de fin de archivo al array de tokens
        tokens << [false, false]

        # Devolver el array de tokens
        tokens
    end
end