;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_43)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.9973018734721234)
		(= (value_axe a1) 0.9203048723560984)
		(= (value_axe a2) 0.29204370049745665)
		(= (value_axe a3) 0.9341953770676175)
		(= (value_axe a4) 0.18458540657482436)

        (= (value_pickaxe p0) 0.09586730620466477)
		(= (value_pickaxe p1) 0.7223587941429438)
		(= (value_pickaxe p2) 0.2942974008882182)
		(= (value_pickaxe p3) 0.5194567670029878)
		(= (value_pickaxe p4) 0.639251250565777)

        (= (value_shovel s0) 1.2839335677303767)
		(= (value_shovel s1) 6.216295186067841)
		(= (value_shovel s2) 2.9318831521442514)
		(= (value_shovel s3) 4.026761429483992)
		(= (value_shovel s4) 3.4135196229617617)

        (= (value_hoe h0) 24.841781138887672)
		(= (value_hoe h1) 24.93583497136909)
		(= (value_hoe h2) 15.746062121235918)
		(= (value_hoe h3) 12.067233092199043)
		(= (value_hoe h4) 15.986667410801214)

        (= (trees_in_map) 33)

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

