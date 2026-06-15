;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_35)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.3365853005647852)
		(= (value_axe a1) 0.5196103232876658)

        (= (value_pickaxe p0) 0.5346342983041575)
		(= (value_pickaxe p1) 0.14137257844942608)
		(= (value_pickaxe p2) 0.384279352257881)
		(= (value_pickaxe p3) 0.40960857805894524)

        (= (value_shovel s0) 1.8142156697165532)
		(= (value_shovel s1) 6.8622662169792985)

        (= (value_hoe h0) 23.975538889749547)
		(= (value_hoe h1) 14.0629372984536)
		(= (value_hoe h2) 14.53691966005785)
		(= (value_hoe h3) 21.53592201922872)

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

