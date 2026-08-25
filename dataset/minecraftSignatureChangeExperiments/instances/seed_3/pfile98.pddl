;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_98)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.9908401472983372)
		(= (value_axe a1) 0.7596375612387319)
		(= (value_axe a2) 0.39204794237203366)
		(= (value_axe a3) 0.2063831268073698)
		(= (value_axe a4) 0.6528436176923784)

        (= (value_pickaxe p0) 0.2107122456482483)
		(= (value_pickaxe p1) 0.7572886769622921)
		(= (value_pickaxe p2) 0.574343065634844)

        (= (value_shovel s0) 6.780419025916266)
		(= (value_shovel s1) 3.495472318047324)
		(= (value_shovel s2) 3.1209689817142907)
		(= (value_shovel s3) 7.330975367825146)
		(= (value_shovel s4) 5.637537855860057)

        (= (value_hoe h0) 17.564695424644754)
		(= (value_hoe h1) 21.213005747432472)
		(= (value_hoe h2) 18.71064844040159)
		(= (value_hoe h3) 22.858907631643046)

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

