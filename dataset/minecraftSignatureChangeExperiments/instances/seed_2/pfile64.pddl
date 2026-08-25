;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_64)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.5464098659488321)
		(= (value_axe a1) 0.30256156051815464)

        (= (value_pickaxe p0) 0.9972394493330363)
		(= (value_pickaxe p1) 0.7268812611588907)
		(= (value_pickaxe p2) 0.7915093244728236)
		(= (value_pickaxe p3) 0.8961153914304829)
		(= (value_pickaxe p4) 0.9349706411400163)

        (= (value_shovel s0) 5.018328211329953)
		(= (value_shovel s1) 6.770849612371874)

        (= (value_hoe h0) 20.037883504626446)
		(= (value_hoe h1) 15.101277463331881)
		(= (value_hoe h2) 15.56385108911098)
		(= (value_hoe h3) 15.235711508730374)
		(= (value_hoe h4) 10.510878957210082)

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

