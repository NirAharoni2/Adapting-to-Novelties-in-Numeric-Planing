;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_86)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.34375250786990785)
		(= (value_axe a1) 0.1695897968378688)

        (= (value_pickaxe p0) 0.32789045607698064)
		(= (value_pickaxe p1) 0.11380889102244907)

        (= (value_shovel s0) 3.2165023852271375)
		(= (value_shovel s1) 4.802522051906015)
		(= (value_shovel s2) 3.8483703229060127)

        (= (value_hoe h0) 16.68430962503126)
		(= (value_hoe h1) 15.815806838874165)
		(= (value_hoe h2) 19.73008996879513)
		(= (value_hoe h3) 25.573873178240568)

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

