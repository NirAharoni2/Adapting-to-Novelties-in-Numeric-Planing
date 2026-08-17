;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_76)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 - pickaxe
		s0 s1 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.06750094087608527)
		(= (value_axe a1) 0.08144099485067047)
		(= (value_axe a2) 0.626584517152394)
		(= (value_axe a3) 0.28452366912326477)

        (= (value_pickaxe p0) 0.6565204354520258)
		(= (value_pickaxe p1) 0.0342283653728751)

        (= (value_shovel s0) 4.195888989239689)
		(= (value_shovel s1) 2.1316410590925545)

        (= (value_hoe h0) 16.64373003363834)
		(= (value_hoe h1) 23.870799391985884)

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

