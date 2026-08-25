;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_71)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe
		s0 s1 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.16995784216666954)
		(= (value_axe a1) 0.6404702216496623)
		(= (value_axe a2) 0.21134921752589986)
		(= (value_axe a3) 0.7581460858219877)
		(= (value_axe a4) 0.5049018169110864)

        (= (value_pickaxe p0) 0.9531328097540117)
		(= (value_pickaxe p1) 0.8478299952913613)
		(= (value_pickaxe p2) 0.7273707661348875)

        (= (value_shovel s0) 3.6075500979967323)
		(= (value_shovel s1) 1.3045913979237769)

        (= (value_hoe h0) 21.132881874393107)
		(= (value_hoe h1) 24.913425887444767)

        (= (trees_in_map) 31)

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

