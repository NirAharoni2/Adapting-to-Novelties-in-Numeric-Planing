;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_66)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.3829836300741709)
		(= (value_axe a1) 0.6814983969987659)

        (= (value_pickaxe p0) 0.13467272685460663)
		(= (value_pickaxe p1) 0.6943459361771798)
		(= (value_pickaxe p2) 0.2966106166983874)
		(= (value_pickaxe p3) 0.6572225911416562)
		(= (value_pickaxe p4) 0.17367548319024817)

        (= (value_shovel s0) 6.525336067242924)
		(= (value_shovel s1) 3.934645714517382)
		(= (value_shovel s2) 6.826669577243447)

        (= (value_hoe h0) 29.350956310578503)
		(= (value_hoe h1) 21.625299029503708)
		(= (value_hoe h2) 10.425062631127718)

        (= (trees_in_map) 31)

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

