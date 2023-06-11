class ArithmeticParser
    rule
        assignment:  TkIdent TkAsignacion expression {
            result = Assignment.new(val[0], val[2])
        }

        expression:  TkNumLit TkMas TkNumLit {
            result = ArithmeticBinary.new(val[1], val[0], val[2])
        }