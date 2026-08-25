;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_13)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.4092427925243217)
		(= (value_axe a1) 0.5639201301507394)
		(= (value_axe a2) 0.5383856696593964)
		(= (value_axe a3) 0.4674722711899316)

        (= (value_pickaxe p0) 0.15677544918609887)
		(= (value_pickaxe p1) 0.38274636539711904)
		(= (value_pickaxe p2) 0.47703130511352854)
		(= (value_pickaxe p3) 0.19915738677976214)

        (= (value_shovel s0) 1.93088128611646)
		(= (value_shovel s1) 1.6358184028998952)
		(= (value_shovel s2) 6.748640151726224)

        (= (value_hoe h0) 23.233170509479564)
		(= (value_hoe h1) 17.637076393949737)
		(= (value_hoe h2) 16.520843441160324)
		(= (value_hoe h3) 28.329522552366264)
		(= (value_hoe h4) 20.788472166761828)

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

