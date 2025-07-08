def generate_expressions(model_dict):
    def nest_addition(terms):
        if not terms:
            return "0"
        if len(terms) == 1:
            return terms[0]
        return f"(+ {terms[0]} {nest_addition(terms[1:])})"

    expressions = {}

    for y_key, weights in model_dict.items():
        intercept = weights.get('__intercept__', 0)
        terms = [
            f"(* {coeff} {x_key})"
            for x_key, coeff in weights.items()
            if x_key != '__intercept__'
        ]
        if intercept != 0:
            terms.append(str(intercept))

        expr = nest_addition(terms)
        expression = f"(assign {y_key} {expr})"
        expressions[y_key] = expression

    return expressions


model = {
    '(y)': {
        '(x 1)': 1.0,
        '(x 2)': -2.5,
        '(x 3)': 0.75,
        '__intercept__': 4.0
    },
    '(s ?s)': {
        '(x 1)': 1.0,
        '(x 2)': -2.5,
        '__intercept__': 4.0
    }
}

for expr in generate_expressions(model):
    print(generate_expressions(model))
