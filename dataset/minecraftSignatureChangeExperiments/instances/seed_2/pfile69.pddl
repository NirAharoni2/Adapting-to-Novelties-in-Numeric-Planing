;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_69)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.2815097073477987)
		(= (value_axe a1) 0.6913942924401034)
		(= (value_axe a2) 0.8764011908121375)

        (= (value_pickaxe p0) 0.20531213756000166)
		(= (value_pickaxe p1) 0.1317814780030373)

        (= (value_shovel s0) 6.51507214241141)
		(= (value_shovel s1) 2.7449024611915345)
		(= (value_shovel s2) 1.738734226812416)

        (= (value_hoe h0) 19.83770604311796)
		(= (value_hoe h1) 13.736499877282238)
		(= (value_hoe h2) 14.26995461984255)

        (= (trees_in_map) 29)

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

