;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_46)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.4524669897241105)
		(= (value_axe a1) 0.1290164426772299)
		(= (value_axe a2) 0.08362493667843507)

        (= (value_pickaxe p0) 0.8179794830524226)
		(= (value_pickaxe p1) 0.14081096173110397)
		(= (value_pickaxe p2) 0.8106243388087143)
		(= (value_pickaxe p3) 0.021295102319521475)
		(= (value_pickaxe p4) 0.5623300035166062)

        (= (value_shovel s0) 7.697380756435728)
		(= (value_shovel s1) 7.077054900060426)
		(= (value_shovel s2) 1.54886890479838)

        (= (value_hoe h0) 29.43027514496245)
		(= (value_hoe h1) 13.876757468924295)

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

