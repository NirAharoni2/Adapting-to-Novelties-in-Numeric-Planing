;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_17)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.4544478489382745)
		(= (value_axe a1) 0.7079461529367366)

        (= (value_pickaxe p0) 0.6461829560153347)
		(= (value_pickaxe p1) 0.8666106001087682)

        (= (value_shovel s0) 7.702670669540906)
		(= (value_shovel s1) 2.310971484989619)
		(= (value_shovel s2) 3.432027527946234)
		(= (value_shovel s3) 7.898571937896163)
		(= (value_shovel s4) 7.762562574515743)

        (= (value_hoe h0) 29.56115558662899)
		(= (value_hoe h1) 22.184241282850962)
		(= (value_hoe h2) 23.401421315706763)

        (= (trees_in_map) 39)

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

