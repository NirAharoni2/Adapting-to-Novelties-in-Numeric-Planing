;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_8)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.07046830165073614)
		(= (value_axe a1) 0.14723329224728154)
		(= (value_axe a2) 0.5255944922497706)
		(= (value_axe a3) 0.3656979915430316)

        (= (value_pickaxe p0) 0.09989687321180274)
		(= (value_pickaxe p1) 0.18382002941386633)
		(= (value_pickaxe p2) 0.2629049194376475)

        (= (value_shovel s0) 5.969183046624861)
		(= (value_shovel s1) 1.620304262320713)
		(= (value_shovel s2) 3.2991097533663885)

        (= (value_hoe h0) 21.51950322608521)
		(= (value_hoe h1) 20.471017246775524)
		(= (value_hoe h2) 14.540599700625197)

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

