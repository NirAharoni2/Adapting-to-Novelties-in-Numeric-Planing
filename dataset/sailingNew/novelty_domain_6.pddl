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
     :parameters (?b - boat ?t - person)
     :precondition (and)
     :effect (and
            (increase (x ?b) 1.5)
            (assign (y ?b) (+ 1.0 (+ (y ?b) (* 0.01 (* (d ?t) (d ?t) ) ) ) ) ) )
    )
    (:action go_north_west
     :parameters (?b - boat ?t - person)
     :precondition (and)
     :effect (and
            (decrease (x ?b) 1.5)
            (assign (y ?b) (+ 1.0 (+ (y ?b) (* 0.01 (* (d ?t) (d ?t) ) ) ) ) ) )
    )
    (:action go_est
     :parameters (?b - boat ?t - person)
     :precondition (and)
     :effect (and
            (increase (x ?b) 3))
    )
    (:action go_west
     :parameters (?b - boat ?t - person)
     :precondition (and)
     :effect (and
            (decrease (x ?b) 3))
    )
    (:action go_south_east
     :parameters (?b - boat ?t - person)
     :precondition (and)
     :effect (and
            (increase (x ?b) 2)
            (assign (y ?b) (+ 1.0 (+ (y ?b) (* -0.01 (* (d ?t) (d ?t) ) ) ) ) ) )
    )
    (:action go_south_west
     :parameters (?b - boat ?t - person)
     :precondition (and)
     :effect (and
            (decrease (x ?b) 2)
            (assign (y ?b) (+ 1.0 (+ (y ?b) (* -0.01 (* (d ?t) (d ?t) ) ) ) ) ) )
    )
    (:action go_south
     :parameters (?b - boat ?t - person)
     :precondition (and)
     :effect (and
            (assign (y ?b) (+ 1.0 (+ (y ?b) (* -0.01 (* (d ?t) (d ?t) ) ) ) ) ) )
    )
    (:action save_person
     :parameters (?b - boat ?t - person)
     :precondition (and
            (>= (+ (x ?b) (y ?b)) (d ?t))
            (>= (- (y ?b) (x ?b)) (d ?t))
            (<= (+ (x ?b) (y ?b)) (+ (d ?t) 25))
            (<= (- (y ?b) (x ?b)) (+ (d ?t) 25)))
     :effect (and
            (saved ?t))
    )
)