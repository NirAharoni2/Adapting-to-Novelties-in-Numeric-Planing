;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_81)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.5858884670981238)
		(= (value_axe a1) 0.9558553944543022)
		(= (value_axe a2) 0.7035547220829719)

        (= (value_pickaxe p0) 0.054330780295512415)
		(= (value_pickaxe p1) 0.8077678669278315)

        (= (value_shovel s0) 2.4860659548693844)
		(= (value_shovel s1) 5.167978617133288)
		(= (value_shovel s2) 2.3376442755006415)

        (= (value_hoe h0) 11.228523405403077)
		(= (value_hoe h1) 25.45358891543427)
		(= (value_hoe h2) 19.717093467457133)

        (= (trees_in_map) 39)

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

