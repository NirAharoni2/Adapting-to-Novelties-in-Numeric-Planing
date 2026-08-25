;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_40)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.8003934571550348)
		(= (value_axe a1) 0.08578527943670455)

        (= (value_pickaxe p0) 0.034193321017138345)
		(= (value_pickaxe p1) 0.3842362020772886)
		(= (value_pickaxe p2) 0.7326061745063001)
		(= (value_pickaxe p3) 0.3132066930474475)

        (= (value_shovel s0) 1.9100342975713325)
		(= (value_shovel s1) 6.562005554596202)

        (= (value_hoe h0) 26.138387637903698)
		(= (value_hoe h1) 27.11719597545144)
		(= (value_hoe h2) 16.07488946528114)
		(= (value_hoe h3) 18.49660722037947)

        (= (trees_in_map) 27)

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

