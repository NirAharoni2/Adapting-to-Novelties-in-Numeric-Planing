;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_49)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.10104139496029818)
		(= (value_axe a1) 0.10081775596818776)
		(= (value_axe a2) 0.007534460035932167)

        (= (value_pickaxe p0) 0.5968958679359323)
		(= (value_pickaxe p1) 0.06221136729656451)

        (= (value_shovel s0) 2.3682226659673393)
		(= (value_shovel s1) 5.192650709414986)

        (= (value_hoe h0) 23.26564410080603)
		(= (value_hoe h1) 28.903549567122063)
		(= (value_hoe h2) 26.51088447681747)
		(= (value_hoe h3) 24.16026810000597)
		(= (value_hoe h4) 18.573961492963804)

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

