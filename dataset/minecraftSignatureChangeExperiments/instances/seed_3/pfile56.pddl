;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_56)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.7322153225201151)
		(= (value_axe a1) 0.34101331777014443)
		(= (value_axe a2) 0.6452775318072835)
		(= (value_axe a3) 0.2823924082123497)

        (= (value_pickaxe p0) 0.9669323285435206)
		(= (value_pickaxe p1) 0.45290301836931623)
		(= (value_pickaxe p2) 0.47786050539109304)

        (= (value_shovel s0) 4.720014881495524)
		(= (value_shovel s1) 7.124306047195031)

        (= (value_hoe h0) 29.730619582581937)
		(= (value_hoe h1) 20.56958772557043)
		(= (value_hoe h2) 18.831107168580097)

        (= (trees_in_map) 39)

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

