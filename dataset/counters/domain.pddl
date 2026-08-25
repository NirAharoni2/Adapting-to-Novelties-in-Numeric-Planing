(define (domain counters)
    (:requirements :strips :typing :adl)
    (:types counter)

    (:functions
        (value ?c - counter);; - int  ;; The value shown in counter ?c
        (max_int);; -  int ;; The maximum integer we consider - a static value
        (rate_value ?c - counter);;
    )

    ;; Increment the value in the given counter by one
    (:action increment
         :parameters (?c - counter)
         :precondition (and (<= (+ (value ?c) 1) (max_int)))
         :effect (and (increase (value ?c) 1))
    )

    ;; Decrement the value in the given counter by one
    (:action decrement
         :parameters (?c - counter)
         :precondition (and (>= (value ?c) 1))
         :effect (and (decrease (value ?c) 1))
    )
)
