(define (domain counters)
    (:requirements :strips :typing :adl)
    (:types counter rate_decrease)

    (:functions
        (value ?c - counter);; - int  ;; The value shown in counter ?c
        (max_int);; -  int ;; The maximum integer we consider - a static value
        (rate_value ?r - rate_decrease) ;; The value of rate decrease
        (factor)
    )

    ;; Increment the value in the given counter by one
    (:action increment
         :parameters (?c - counter)
         :precondition (and (<= (+ (value ?c) 1) (max_int)))
         :effect (and (increase (value ?c) 1))
    )

    ;; Decrement the value in the given counter by one
    (:action decrement
         :parameters (?c - counter ?r - rate_decrease)
         :precondition (and (>= (value ?c) 1))
         :effect (and
         (decrease (value ?c) (rate_value ?r))
         (assign (rate_value ?r) (* (rate_value ?r) (factor)))
         )
    )
)
