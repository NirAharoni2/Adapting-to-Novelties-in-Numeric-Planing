(define (domain polycraft)
    (:requirements :typing :fluents)

    (:types
    )

    (:predicates
        
    )
    (:functions
        (trees_in_map)
        (count_log_in_inventory)
        (count_planks_in_inventory)
        (count_stick_in_inventory)
        (count_sack_polyisoprene_pellets_in_inventory)
        (count_tree_tap_in_inventory)
        (count_pogo_stick)
    )
    (:action get_log
     :parameters ()
     :precondition (and
            (>= (trees_in_map ) 1))
     :effect (and
            (assign (count_log_in_inventory ) (+ (* 0.13323 (chop_factor )) (+ (* 0.99954 (count_log_in_inventory )) (+ (* -0.00126 (count_planks_in_inventory )) (+ (* -0.00073 (count_stick_in_inventory )) (+ (* 0.00028 (trees_in_map )) -0.22931))))))
            (assign (trees_in_map ) (+ (* 0.13323 (chop_factor )) (+ (* -0.00046 (count_log_in_inventory )) (+ (* -0.00126 (count_planks_in_inventory )) (+ (* -0.00073 (count_stick_in_inventory )) (+ (* 1.00028 (trees_in_map )) -0.22931)))))))
    )
    (:action craft_plank
     :parameters ()
     :precondition (and
            (>= (count_log_in_inventory ) 1))
     :effect (and
            (decrease (count_log_in_inventory ) 1)
            (increase (count_planks_in_inventory ) 4))
    )
    (:action craft_stick
     :parameters ()
     :precondition (and
            (>= (count_planks_in_inventory ) 2))
     :effect (and
            (decrease (count_planks_in_inventory ) 2)
            (increase (count_stick_in_inventory ) 4))
    )
    (:action craft_tree_tap
     :parameters ()
     :precondition (and
            (>= (count_planks_in_inventory ) 5)
            (>= (count_stick_in_inventory ) 1))
     :effect (and
            (decrease (count_planks_in_inventory ) 5)
            (decrease (count_stick_in_inventory ) 1)
            (increase (count_tree_tap_in_inventory ) 1))
    )
    (:action craft_wooden_pogo
     :parameters ()
     :precondition (and
            (>= (count_planks_in_inventory ) 2)
            (>= (count_stick_in_inventory ) 4)
            (>= (count_sack_polyisoprene_pellets_in_inventory ) 1))
     :effect (and
            (decrease (count_planks_in_inventory ) 2)
            (decrease (count_stick_in_inventory ) 4)
            (decrease (count_sack_polyisoprene_pellets_in_inventory ) 1)
            (increase (count_pogo_stick ) 1))
    )
    (:action place_tree_tap
     :parameters ()
     :precondition (and
            (>= (trees_in_map ) 1)
            (>= (count_tree_tap_in_inventory ) 1))
     :effect (and
            (increase (count_sack_polyisoprene_pellets_in_inventory ) 1))
    )
)