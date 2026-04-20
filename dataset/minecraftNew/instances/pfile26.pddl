;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_26)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.029660860695257196)
		(= (value_axe a1) 0.8871218138870186)
		(= (value_axe a2) 0.5790401667018326)
		(= (value_axe a3) 0.5555356191464286)
		(= (value_axe a4) 0.34179931623470305)

        (= (value_pickaxe p0) 0.6322175469390539)
		(= (value_pickaxe p1) 0.8796866223646524)
		(= (value_pickaxe p2) 0.9607389115161011)
		(= (value_pickaxe p3) 0.43399897029416334)

        (= (trees_in_map) 30)

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

