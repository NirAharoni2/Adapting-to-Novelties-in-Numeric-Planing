;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_95)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.2603667115805882)
		(= (value_axe a1) 0.9642244517870997)

        (= (value_pickaxe p0) 0.6580355417154597)
		(= (value_pickaxe p1) 0.67777274073024)
		(= (value_pickaxe p2) 0.2362594935004918)
		(= (value_pickaxe p3) 0.32535799845369195)
		(= (value_pickaxe p4) 0.273622119192493)

        (= (value_shovel s0) 1.75225091597411)
		(= (value_shovel s1) 5.349622120815507)

        (= (value_hoe h0) 14.603068884874066)
		(= (value_hoe h1) 27.53838250475623)
		(= (value_hoe h2) 19.04332251842556)

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

