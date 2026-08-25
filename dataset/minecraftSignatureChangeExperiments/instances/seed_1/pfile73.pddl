;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_73)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 - pickaxe
		s0 s1 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.8539871307856776)
		(= (value_axe a1) 0.6334281234927437)
		(= (value_axe a2) 0.24589920598766768)

        (= (value_pickaxe p0) 0.20787202942545968)
		(= (value_pickaxe p1) 0.5077213153006307)
		(= (value_pickaxe p2) 0.12156584793434377)

        (= (value_shovel s0) 7.342140576987887)
		(= (value_shovel s1) 5.955035347381412)

        (= (value_hoe h0) 26.385643623354955)
		(= (value_hoe h1) 17.67641047550042)

        (= (trees_in_map) 36)

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

