;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_90)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 p4 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.354066602920722)
		(= (value_axe a1) 0.9372480689107322)

        (= (value_pickaxe p0) 0.12439860203387987)
		(= (value_pickaxe p1) 0.5375717717187708)
		(= (value_pickaxe p2) 0.7224414991297299)
		(= (value_pickaxe p3) 0.289320101871516)
		(= (value_pickaxe p4) 0.5410587346177005)

        (= (trees_in_map) 39)

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

