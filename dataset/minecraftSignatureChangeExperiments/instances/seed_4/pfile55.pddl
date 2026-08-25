;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_55)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.051539187918479)
		(= (value_axe a1) 0.7303079992678447)
		(= (value_axe a2) 0.4190024644200202)
		(= (value_axe a3) 0.37276189214738764)

        (= (value_pickaxe p0) 0.34842940746432194)
		(= (value_pickaxe p1) 0.3668347403262049)

        (= (value_shovel s0) 5.035814636865232)
		(= (value_shovel s1) 3.7175032508853567)
		(= (value_shovel s2) 1.9020638463429027)

        (= (value_hoe h0) 19.429034800385608)
		(= (value_hoe h1) 29.769831188177978)
		(= (value_hoe h2) 25.33374282255842)
		(= (value_hoe h3) 24.36672907074326)

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

