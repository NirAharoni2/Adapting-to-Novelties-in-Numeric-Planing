;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_63)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.33647032512435715)
		(= (value_axe a1) 0.5917152798270295)

        (= (value_pickaxe p0) 0.6390905219495598)
		(= (value_pickaxe p1) 0.4887092104176266)

        (= (value_shovel s0) 7.1159107211918045)
		(= (value_shovel s1) 7.436155350708005)
		(= (value_shovel s2) 2.974492350501436)

        (= (value_hoe h0) 16.675873854439054)
		(= (value_hoe h1) 27.538875086401514)

        (= (trees_in_map) 24)

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

