;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_22)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.6482498624748614)
		(= (value_axe a1) 0.7773327058207304)

        (= (value_pickaxe p0) 0.06926429985996108)
		(= (value_pickaxe p1) 0.217371835215997)
		(= (value_pickaxe p2) 0.2541724237955495)
		(= (value_pickaxe p3) 0.8901723413886365)
		(= (value_pickaxe p4) 0.7758008707957195)

        (= (value_shovel s0) 1.9623582758776854)
		(= (value_shovel s1) 5.353356673815401)
		(= (value_shovel s2) 5.726001225487656)

        (= (value_hoe h0) 10.735190644824504)
		(= (value_hoe h1) 28.675530441851606)
		(= (value_hoe h2) 13.39418915884181)

        (= (trees_in_map) 21)

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

