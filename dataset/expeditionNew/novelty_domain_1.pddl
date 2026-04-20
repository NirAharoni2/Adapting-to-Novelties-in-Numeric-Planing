(define (domain expedition)
    (:requirements :typing :fluents)

    (:types
        sled waypoint factor - object
    )

    (:predicates
        (at ?s - sled ?w - waypoint)
        (is_next ?x - waypoint ?y - waypoint)
    )
    (:functions
        (sled_supplies ?s - sled)
        (sled_capacity ?s - sled)
        (waypoint_supplies ?w - waypoint)
        (value ?f - factor)
    )
    (:action move_forwards
     :parameters (?s - sled ?w1 - waypoint ?w2 - waypoint ?f - factor)
     :precondition (and
            (at ?s ?w1)
            (>= (sled_supplies ?s) 1)
            (is_next ?w1 ?w2))
     :effect (and
            (not (at ?s ?w1))
            (at ?s ?w2)
            (assign (sled_supplies ?s) (+ (* 1.0 (sled_supplies ?s)) (* -3.0 (value ?f))))
            (assign (value ?f) (+ (* 1.0 (value ?f)) 0.02)))
    )
    (:action move_backwards
     :parameters (?s - sled ?w1 - waypoint ?w2 - waypoint)
     :precondition (and
            (at ?s ?w1)
            (>= (sled_supplies ?s) 1)
            (is_next ?w2 ?w1))
     :effect (and
            (not (at ?s ?w1))
            (at ?s ?w2)
            (decrease (sled_supplies ?s) 1))
    )
    (:action store_supplies
     :parameters (?s - sled ?w - waypoint)
     :precondition (and
            (at ?s ?w)
            (>= (sled_supplies ?s) 1))
     :effect (and
            (increase (waypoint_supplies ?w) 1)
            (decrease (sled_supplies ?s) 1))
    )
    (:action retrieve_supplies
     :parameters (?s - sled ?w - waypoint)
     :precondition (and
            (at ?s ?w)
            (>= (waypoint_supplies ?w) 1)
            (> (sled_capacity ?s) (sled_supplies ?s)))
     :effect (and
            (decrease (waypoint_supplies ?w) 1)
            (increase (sled_supplies ?s) 1))
    )
)