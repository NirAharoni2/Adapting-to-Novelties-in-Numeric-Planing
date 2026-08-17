;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_21)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.5025491894179654)
		(= (value_axe a1) 0.1542013825107803)

        (= (value_pickaxe p0) 0.8443355880537514)
		(= (value_pickaxe p1) 0.48419176420266474)
		(= (value_pickaxe p2) 0.06780119520402872)
		(= (value_pickaxe p3) 0.16803469630639734)

        (= (value_shovel s0) 7.12348079850976)
		(= (value_shovel s1) 2.792493541567453)

        (= (value_hoe h0) 17.826470365725886)
		(= (value_hoe h1) 23.642814055511316)
		(= (value_hoe h2) 27.23192355045976)

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

