;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_7)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.004196109952040006)
		(= (value_axe a1) 0.9384640128555854)

        (= (value_pickaxe p0) 0.6277562733177812)
		(= (value_pickaxe p1) 0.7476783999287702)
		(= (value_pickaxe p2) 0.2860266367883516)

        (= (value_shovel s0) 4.421327160415619)
		(= (value_shovel s1) 3.158699297462201)
		(= (value_shovel s2) 4.860523301078301)

        (= (value_hoe h0) 22.103118559710182)
		(= (value_hoe h1) 10.91544924706521)

        (= (trees_in_map) 28)

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

