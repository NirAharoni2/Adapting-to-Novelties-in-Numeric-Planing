;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_11)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.19940426431685088)
		(= (value_axe a1) 0.4492908060505998)
		(= (value_axe a2) 0.2407925085869581)
		(= (value_axe a3) 0.3027175578532747)
		(= (value_axe a4) 0.05344048722030048)

        (= (value_pickaxe p0) 0.867606781104429)
		(= (value_pickaxe p1) 0.6246979417383228)
		(= (value_pickaxe p2) 0.12241773921722521)
		(= (value_pickaxe p3) 0.9420292904723767)

        (= (value_shovel s0) 4.007024442323859)
		(= (value_shovel s1) 7.9733471081631695)
		(= (value_shovel s2) 5.381727428956619)
		(= (value_shovel s3) 2.669200602838702)

        (= (value_hoe h0) 22.610637035748148)
		(= (value_hoe h1) 15.600022177758676)
		(= (value_hoe h2) 25.35709397459437)
		(= (value_hoe h3) 11.408823008459631)
		(= (value_hoe h4) 16.544671794525605)

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

