;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_71)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.9517769853458283)
		(= (value_axe a1) 0.18655616526625896)
		(= (value_axe a2) 0.6046146171756553)
		(= (value_axe a3) 0.9231545003075122)

        (= (value_pickaxe p0) 0.634768680723445)
		(= (value_pickaxe p1) 0.06450249598531954)
		(= (value_pickaxe p2) 0.08114054506325508)
		(= (value_pickaxe p3) 0.1431578806028473)
		(= (value_pickaxe p4) 0.02957044654638863)

        (= (value_shovel s0) 3.6296059439430595)
		(= (value_shovel s1) 4.356340085154574)
		(= (value_shovel s2) 4.659346137674965)
		(= (value_shovel s3) 1.946370929709754)
		(= (value_shovel s4) 7.58989502791857)

        (= (value_hoe h0) 12.086704721738622)
		(= (value_hoe h1) 16.821010009726358)

        (= (trees_in_map) 33)

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

