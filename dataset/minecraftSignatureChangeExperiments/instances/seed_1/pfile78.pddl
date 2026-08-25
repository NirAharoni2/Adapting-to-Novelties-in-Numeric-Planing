;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_78)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.03693739007275909)
		(= (value_axe a1) 0.529549338030675)
		(= (value_axe a2) 0.10092254655218635)
		(= (value_axe a3) 0.33204516274256446)
		(= (value_axe a4) 0.9328835783030455)

        (= (value_pickaxe p0) 0.7502861436522243)
		(= (value_pickaxe p1) 0.03446153281229747)
		(= (value_pickaxe p2) 0.37015779005532756)
		(= (value_pickaxe p3) 0.07416279230211087)
		(= (value_pickaxe p4) 0.8962248089488986)

        (= (value_shovel s0) 1.5863293851166647)
		(= (value_shovel s1) 4.777117305423809)

        (= (value_hoe h0) 16.689657047402765)
		(= (value_hoe h1) 28.38208896075888)

        (= (trees_in_map) 37)

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

