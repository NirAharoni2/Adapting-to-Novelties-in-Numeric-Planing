;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_98)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.2089877368068398)
		(= (value_axe a1) 0.7030098080287492)
		(= (value_axe a2) 0.11587956058087423)

        (= (value_pickaxe p0) 0.039793221521312705)
		(= (value_pickaxe p1) 0.23933638137646351)

        (= (value_shovel s0) 1.2940968985198018)
		(= (value_shovel s1) 6.116551669717574)

        (= (value_hoe h0) 25.167093972881602)
		(= (value_hoe h1) 20.65126570299326)
		(= (value_hoe h2) 16.677598801633486)

        (= (trees_in_map) 21)

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

