;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_78)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.9640747731991979)
		(= (value_axe a1) 0.19155465988417086)

        (= (value_pickaxe p0) 0.0834694963584467)
		(= (value_pickaxe p1) 0.7448061957320778)
		(= (value_pickaxe p2) 0.5308846961591173)
		(= (value_pickaxe p3) 0.7689277434542054)
		(= (value_pickaxe p4) 0.508457579753513)

        (= (value_shovel s0) 5.413787403341988)
		(= (value_shovel s1) 1.5787644962458687)

        (= (value_hoe h0) 23.477025225897872)
		(= (value_hoe h1) 20.248991378307917)

        (= (trees_in_map) 36)

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

