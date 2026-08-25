;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_38)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.905046994635668)
		(= (value_axe a1) 0.5469258234847338)
		(= (value_axe a2) 0.5380944028449679)

        (= (value_pickaxe p0) 0.7116483813532086)
		(= (value_pickaxe p1) 0.5364048661598546)
		(= (value_pickaxe p2) 0.9199207176445846)
		(= (value_pickaxe p3) 0.07008436108787686)

        (= (value_shovel s0) 2.8696650877817076)
		(= (value_shovel s1) 5.274639137445442)
		(= (value_shovel s2) 7.806530209373381)
		(= (value_shovel s3) 1.5059895125110805)
		(= (value_shovel s4) 2.243049299976421)

        (= (value_hoe h0) 11.931343101115488)
		(= (value_hoe h1) 11.174182283676773)

        (= (trees_in_map) 26)

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

