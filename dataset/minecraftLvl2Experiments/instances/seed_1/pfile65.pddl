;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_65)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.9748747123026004)
		(= (value_axe a1) 0.3290484894559942)
		(= (value_axe a2) 0.24517228293809112)

        (= (value_pickaxe p0) 0.6767975200809943)
		(= (value_pickaxe p1) 0.742986071640007)

        (= (value_shovel s0) 3.5868490669755335)
		(= (value_shovel s1) 5.559999372155122)
		(= (value_shovel s2) 5.642244711985801)

        (= (value_hoe h0) 28.735380648638024)
		(= (value_hoe h1) 18.639824009031713)
		(= (value_hoe h2) 17.97715925306438)
		(= (value_hoe h3) 12.408205057893491)

        (= (trees_in_map) 35)

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

