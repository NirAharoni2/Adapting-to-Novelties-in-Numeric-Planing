;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_55)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.5284814960517538)
		(= (value_axe a1) 0.13506734851795632)
		(= (value_axe a2) 0.7614081860479278)
		(= (value_axe a3) 0.9888681835793595)
		(= (value_axe a4) 0.21318079766159026)

        (= (value_pickaxe p0) 0.6225476674268445)
		(= (value_pickaxe p1) 0.48040695734353067)
		(= (value_pickaxe p2) 0.11840708649100551)

        (= (value_shovel s0) 7.210782959914353)
		(= (value_shovel s1) 5.888441233301804)

        (= (value_hoe h0) 14.50055660129022)
		(= (value_hoe h1) 22.70525284690045)
		(= (value_hoe h2) 26.580540940600997)
		(= (value_hoe h3) 11.000620210628597)

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

