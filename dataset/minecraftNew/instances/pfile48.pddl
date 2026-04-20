;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_48)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.6341287718558497)
		(= (value_axe a1) 0.2523369536751835)
		(= (value_axe a2) 0.5148808949409943)

        (= (value_pickaxe p0) 0.04850898466868536)
		(= (value_pickaxe p1) 0.8311066809828365)
		(= (value_pickaxe p2) 0.052738693298932326)

        (= (trees_in_map) 28)

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

