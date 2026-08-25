;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_19)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.43263800097623695)
		(= (value_axe a1) 0.15789694375216057)
		(= (value_axe a2) 0.7148244519688113)
		(= (value_axe a3) 0.667778739685542)

        (= (value_pickaxe p0) 0.2525864077938834)
		(= (value_pickaxe p1) 0.0644141933476613)
		(= (value_pickaxe p2) 0.9633858833215757)

        (= (value_shovel s0) 6.657768398606776)
		(= (value_shovel s1) 4.8448895197476345)
		(= (value_shovel s2) 4.789643563894865)

        (= (value_hoe h0) 27.025853326627598)
		(= (value_hoe h1) 19.066193552444357)
		(= (value_hoe h2) 17.91420889441535)
		(= (value_hoe h3) 16.77338289790118)

        (= (trees_in_map) 28)

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

