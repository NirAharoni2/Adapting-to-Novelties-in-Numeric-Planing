;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_16)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.6633130366990824)
		(= (value_axe a1) 0.11240368268471523)
		(= (value_axe a2) 0.2392713975384123)
		(= (value_axe a3) 0.039399321950593924)
		(= (value_axe a4) 0.5565414238971824)

        (= (value_pickaxe p0) 0.011881992519825912)
		(= (value_pickaxe p1) 0.5820207406810516)
		(= (value_pickaxe p2) 0.8505750782746431)

        (= (value_shovel s0) 2.0899733961388085)
		(= (value_shovel s1) 6.741534284037871)
		(= (value_shovel s2) 4.783111501504227)
		(= (value_shovel s3) 3.366837079695601)

        (= (value_hoe h0) 25.514486578608555)
		(= (value_hoe h1) 25.219801788435568)
		(= (value_hoe h2) 10.952594191964733)
		(= (value_hoe h3) 17.17073299294097)
		(= (value_hoe h4) 19.89454807885786)

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

