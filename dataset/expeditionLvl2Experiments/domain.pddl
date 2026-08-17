(define (domain expedition)
    (:requirements :typing :fluents)

    (:types
        sled waypoint - object
    )

    (:predicates
        (at ?s - sled ?w - waypoint)
        (is_next ?x - waypoint ?y - waypoint)
    )
    (:functions
        (sled_supplies ?s - sled)
        (sled_capacity ?s - sled)
        (waypoint_supplies ?w - waypoint)
    )
    (:action move_forwards
     :parameters (?s - sled ?w1 - waypoint ?w2 - waypoint)
     :precondition (and
            (at ?s ?w1)
            (>= (sled_supplies ?s) 1)
            (is_next ?w1 ?w2))
     :effect (and
            (not (at ?s ?w1))
            (at ?s ?w2)
            (assign (sled_supplies ?s) (+ (* 1.0 (sled_supplies ?s)) -2.0))
            (assign (waypoint_supplies ?w2) (+ (* 1.0 (waypoint_supplies ?w2)) 1.0)))
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