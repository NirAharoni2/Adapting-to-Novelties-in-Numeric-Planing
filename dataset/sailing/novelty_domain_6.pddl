(define (domain sailing)
    (:requirements :typing :fluents)

    (:types
        boat person - object
    )

    (:predicates
        (saved ?t - person)
    )
    (:functions
        (x ?b - boat)
        (y ?b - boat)
        (d ?t - person)
        (drift_factor)
    )
    (:action go_north_east
     :parameters (?b - boat)
     :precondition (and)
     :effect (and
            (increase (x ?b) 1.5)
            (increase (y ?b) 1.5)
            (assign (d ?t) (+ (* 1.0 (d ?t)) (+ (* 1.0 (drift_factor )) -3.5))))
    )
    (:action go_north_west
     :parameters (?b - boat)
     :precondition (and)
     :effect (and
            (decrease (x ?b) 1.5)
            (increase (y ?b) 1.5)
            (assign (d ?t) (+ (* 1.0 (d ?t)) (+ (* 1.0 (drift_factor )) -3.5))))
    )
    (:action go_est
     :parameters (?b - boat)
     :precondition (and)
     :effect (and
            (increase (x ?b) 3)
            (assign (d ?t) (+ (* 1.0 (d ?t)) (+ (* 1.0 (drift_factor )) -3.5))))
    )
    (:action go_west
     :parameters (?b - boat)
     :precondition (and)
     :effect (and
            (decrease (x ?b) 3)
            (assign (d ?t) (+ (* 1.0 (d ?t)) (+ (* 1.0 (drift_factor )) -3.5))))
    )
    (:action go_south_east
     :parameters (?b - boat)
     :precondition (and)
     :effect (and
            (increase (x ?b) 2)
            (decrease (y ?b) 2)
            (assign (d ?t) (+ (* 1.0 (d ?t)) (+ (* 1.0 (drift_factor )) -3.5))))
    )
    (:action go_south_west
     :parameters (?b - boat)
     :precondition (and)
     :effect (and
            (decrease (x ?b) 2)
            (decrease (y ?b) 2)
            (assign (d ?t) (+ (* 1.0 (d ?t)) (+ (* 1.0 (drift_factor )) -3.5))))
    )
    (:action go_south
     :parameters (?b - boat)
     :precondition (and)
     :effect (and
            (decrease (y ?b) 2)
            (assign (d ?t) (+ (* 1.0 (d ?t)) (+ (* 1.0 (drift_factor )) -3.5))))
    )
    (:action save_person
     :parameters (?b - boat)
     :precondition (and
            (>= (+ (x ?b) (y ?b)) (d ?t))
            (>= (- (y ?b) (x ?b)) (d ?t))
            (<= (+ (x ?b) (y ?b)) (+ (d ?t) 25))
            (<= (- (y ?b) (x ?b)) (+ (d ?t) 25)))
     :effect (and
            (saved ?t))
    )
)