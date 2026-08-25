;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_17)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.5948920814368261)
		(= (value_axe a1) 0.6890173383666665)
		(= (value_axe a2) 0.9532678323405633)

        (= (value_pickaxe p0) 0.6488644442102243)
		(= (value_pickaxe p1) 0.8586928837874181)

        (= (value_shovel s0) 6.888402795033992)
		(= (value_shovel s1) 4.330038061313777)
		(= (value_shovel s2) 5.776297405088765)
		(= (value_shovel s3) 6.037266085857727)
		(= (value_shovel s4) 7.292280212604553)

        (= (value_hoe h0) 19.301693265143562)
		(= (value_hoe h1) 25.16393453867052)
		(= (value_hoe h2) 16.073002641838585)
		(= (value_hoe h3) 10.064529135021786)
		(= (value_hoe h4) 25.579954450252664)

        (= (trees_in_map) 38)

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

