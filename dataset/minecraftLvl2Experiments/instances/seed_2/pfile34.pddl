;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_34)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.5380118692509301)
		(= (value_axe a1) 0.39240228826949686)
		(= (value_axe a2) 0.5254566799678791)

        (= (value_pickaxe p0) 0.9238066516206488)
		(= (value_pickaxe p1) 0.2011570962497543)
		(= (value_pickaxe p2) 0.7721813926752829)
		(= (value_pickaxe p3) 0.6932982070059481)
		(= (value_pickaxe p4) 0.7862366950099818)

        (= (value_shovel s0) 4.133692585677748)
		(= (value_shovel s1) 4.181602826665648)
		(= (value_shovel s2) 3.4209489127994757)
		(= (value_shovel s3) 4.312697785264271)

        (= (value_hoe h0) 15.09157815801463)
		(= (value_hoe h1) 13.81694191408396)
		(= (value_hoe h2) 19.52211163117611)
		(= (value_hoe h3) 13.842606657043257)

        (= (trees_in_map) 35)

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

