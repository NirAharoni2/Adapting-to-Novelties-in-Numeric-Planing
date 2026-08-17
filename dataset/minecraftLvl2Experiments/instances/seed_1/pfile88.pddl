;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_88)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.6175297889169927)
		(= (value_axe a1) 0.6297499405186971)
		(= (value_axe a2) 0.24349513436220727)

        (= (value_pickaxe p0) 0.39467922135711064)
		(= (value_pickaxe p1) 0.21014841364230163)
		(= (value_pickaxe p2) 0.15198323667114044)
		(= (value_pickaxe p3) 0.9895122669581666)
		(= (value_pickaxe p4) 0.74381410866067)

        (= (value_shovel s0) 7.153960753386378)
		(= (value_shovel s1) 1.010242625986577)
		(= (value_shovel s2) 5.931296876162424)

        (= (value_hoe h0) 16.145241326730257)
		(= (value_hoe h1) 19.958214487266005)

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

