;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_3)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.9809765730721266)
		(= (value_axe a1) 0.9619009378982257)
		(= (value_axe a2) 0.16118465330401888)
		(= (value_axe a3) 0.7540040716518721)
		(= (value_axe a4) 0.7151508982374535)

        (= (value_pickaxe p0) 0.4614066977419776)
		(= (value_pickaxe p1) 0.530355716123445)
		(= (value_pickaxe p2) 0.4900139218501913)
		(= (value_pickaxe p3) 0.9248320720945703)

        (= (value_shovel s0) 4.505887438414584)
		(= (value_shovel s1) 6.820671428542686)
		(= (value_shovel s2) 3.4774694340810113)
		(= (value_shovel s3) 7.1799564300687715)

        (= (value_hoe h0) 27.994011775132513)
		(= (value_hoe h1) 19.220243297632752)
		(= (value_hoe h2) 21.354101408404887)
		(= (value_hoe h3) 28.406608783838575)

        (= (trees_in_map) 34)

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

