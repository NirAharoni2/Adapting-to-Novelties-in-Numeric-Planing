;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_21)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.8704937076301693)
		(= (value_axe a1) 0.3084304444363558)

        (= (value_pickaxe p0) 0.6490652422114037)
		(= (value_pickaxe p1) 0.48378653593083976)
		(= (value_pickaxe p2) 0.5385691725545184)
		(= (value_pickaxe p3) 0.9147031255268172)
		(= (value_pickaxe p4) 0.07671401096867558)

        (= (value_shovel s0) 6.770593018766876)
		(= (value_shovel s1) 3.1291851500865024)
		(= (value_shovel s2) 5.524157908848019)
		(= (value_shovel s3) 6.570886866638135)
		(= (value_shovel s4) 5.57386608793879)

        (= (value_hoe h0) 17.85933129758905)
		(= (value_hoe h1) 26.814095366075115)
		(= (value_hoe h2) 11.858975963064946)

        (= (trees_in_map) 40)

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

