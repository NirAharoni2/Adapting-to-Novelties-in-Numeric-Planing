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
    )
    (:action go_north_east
     :parameters (?b - boat ?t - person)
     :precondition (and)
     :effect (and
            (assign (x ?b) (+ (* -0.09987 (d ?t)) (+ (* 0.51018 (x ?b)) (+ (* -0.48982 (y ?b)) 10.01307))))
            (assign (y ?b) (+ (* -0.09987 (d ?t)) (+ (* -0.48982 (x ?b)) (+ (* 0.51018 (y ?b)) 6.01307)))))
    )
    (:action go_north_west
     :parameters (?b - boat ?t - person)
     :precondition (and)
     :effect (and
            (decrease (x ?b) 1.5)
            (increase (y ?b) 1.5))
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
    (:action go_south_west
     :parameters (?b - boat ?t - person)
     :precondition (and)
     :effect (and
            (assign (x ?b) (+ (* 1.0 (x ?b)) 1.5))
            (assign (y ?b) (+ (* 1.0 (y ?b)) 1.5)))
    )
    (:action go_south_east
     :parameters (?b - boat ?t - person)
     :precondition (and)
     :effect (and
            (decrease (x ?b) 2)
            (decrease (y ?b) 2))
    )
    (:action go_south
     :parameters (?b - boat ?t - person)
     :precondition (and)
     :effect (and
            (decrease (y ?b) 2)
            (assign (d ?t) (d ?t)))
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