;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_73)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.3622799308301825)
		(= (value_axe a1) 0.7250267268284895)
		(= (value_axe a2) 0.6511699417533906)
		(= (value_axe a3) 0.772975462045777)
		(= (value_axe a4) 0.002146384941713708)

        (= (value_pickaxe p0) 0.5895307876835401)
		(= (value_pickaxe p1) 0.7144010348260932)
		(= (value_pickaxe p2) 0.1543304061274956)
		(= (value_pickaxe p3) 0.007764129757686589)
		(= (value_pickaxe p4) 0.45215713030126203)

        (= (trees_in_map) 25)

		(= (count_log_in_inventory) 0)

        (= (count_planks_in_inventory) 0)

        (= (count_stick_in_inventory) 0)

		(= (count_sack_polyisoprene_pellets_in_inventory) 0)

        (= (count_tree_tap_in_inventory) 0)

        (= (count_pogo_stick) 0)
	)
	(:goal
		(and
			(= (count_pogo_stick) 1)
		)
	)
)

