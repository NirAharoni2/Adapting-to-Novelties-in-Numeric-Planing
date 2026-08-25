;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_39)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.704822119028835)
		(= (value_axe a1) 0.7345369510542991)
		(= (value_axe a2) 0.22113672107205506)
		(= (value_axe a3) 0.02476395688483124)

        (= (value_pickaxe p0) 0.4785362410675672)
		(= (value_pickaxe p1) 0.12932670599894536)
		(= (value_pickaxe p2) 0.14178118263552142)
		(= (value_pickaxe p3) 0.3216793629619539)

        (= (value_shovel s0) 4.763859043568951)
		(= (value_shovel s1) 5.310216367349058)
		(= (value_shovel s2) 5.524542771780372)
		(= (value_shovel s3) 7.598532500372636)
		(= (value_shovel s4) 1.7145947850525802)

        (= (value_hoe h0) 21.159102848302446)
		(= (value_hoe h1) 11.732020926225118)

        (= (trees_in_map) 24)

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

