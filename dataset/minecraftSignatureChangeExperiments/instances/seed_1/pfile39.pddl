;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_39)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe
		s0 s1 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.9123546094675049)
		(= (value_axe a1) 0.5128395815876634)
		(= (value_axe a2) 0.5011278045941382)
		(= (value_axe a3) 0.09928212303435402)
		(= (value_axe a4) 0.3126874494561399)

        (= (value_pickaxe p0) 0.12662651040751527)
		(= (value_pickaxe p1) 0.0331860441219044)

        (= (value_shovel s0) 5.649795546363456)
		(= (value_shovel s1) 7.267895167815073)

        (= (value_hoe h0) 25.26804368311873)
		(= (value_hoe h1) 27.97523705397779)

        (= (trees_in_map) 34)

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

