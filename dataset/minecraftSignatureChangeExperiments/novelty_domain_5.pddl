(define (domain polycraft)
    (:requirements :typing :fluents)

    (:types
        axe pickaxe shovel hoe - object
    )

    (:predicates

    )
    (:functions
        (value_pickaxe ?p - pickaxe)
        (value_axe ?a - axe)
        (value_shovel ?s - shovel)
        (value_hoe ?h - hoe)
        (trees_in_map)
        (count_log_in_inventory)
        (count_planks_in_inventory)
        (count_stick_in_inventory)
        (count_sack_polyisoprene_pellets_in_inventory)
        (count_tree_tap_in_inventory)
        (count_pogo_stick)
    )
    (:action get_log
     :parameters (?a - axe)
     :precondition (and
            (>= (trees_in_map ) 1))
     :effect (and
            (assign (count_log_in_inventory ) (+ (* 1.0 (count_log_in_inventory )) (+ (* 0.5 (value_axe ?a)) 0.1)))
            (assign (trees_in_map ) (+ (* 1.0 (trees_in_map )) (+ (* -0.5 (value_axe ?a)) -0.1))))
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