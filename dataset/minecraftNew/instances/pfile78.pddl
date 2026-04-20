;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_78)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 p4 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.04771894340390237)
		(= (value_axe a1) 0.8592661219862683)

        (= (value_pickaxe p0) 0.9368877459617531)
		(= (value_pickaxe p1) 0.5535854860078425)
		(= (value_pickaxe p2) 0.6776662812718297)
		(= (value_pickaxe p3) 0.14617287071015062)
		(= (value_pickaxe p4) 0.7598501517852578)

        (= (trees_in_map) 27)

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

