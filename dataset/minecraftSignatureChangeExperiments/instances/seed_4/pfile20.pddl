;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_51)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.26460737606268225)
		(= (value_axe a1) 0.19676557756052848)
		(= (value_axe a2) 0.7606399147780207)
		(= (value_axe a3) 0.11665471502756686)
		(= (value_axe a4) 0.25549993352642664)

        (= (value_pickaxe p0) 0.3989006599027948)
		(= (value_pickaxe p1) 0.5280098386941774)

        (= (value_shovel s0) 2.90389944645969)
		(= (value_shovel s1) 1.713963760382065)

        (= (value_hoe h0) 17.250127881574592)
		(= (value_hoe h1) 26.173527712023258)
		(= (value_hoe h2) 24.721545501267478)
		(= (value_hoe h3) 22.0221109515805)

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

