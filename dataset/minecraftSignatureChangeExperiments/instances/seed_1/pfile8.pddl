;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_8)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.7026255527287852)
		(= (value_axe a1) 0.49649365599282835)
		(= (value_axe a2) 0.11419064569200998)

        (= (value_pickaxe p0) 0.31200492670057045)
		(= (value_pickaxe p1) 0.34334247127859796)
		(= (value_pickaxe p2) 0.7962030111852236)
		(= (value_pickaxe p3) 0.2584208332654959)

        (= (value_shovel s0) 2.774207042893242)
		(= (value_shovel s1) 6.111065615496127)
		(= (value_shovel s2) 7.837167929587043)
		(= (value_shovel s3) 7.758944624956999)

        (= (value_hoe h0) 18.633110942995497)
		(= (value_hoe h1) 29.51106861543925)
		(= (value_hoe h2) 14.507480266372042)
		(= (value_hoe h3) 17.946307382950444)
		(= (value_hoe h4) 10.706520932739297)

        (= (trees_in_map) 25)

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

