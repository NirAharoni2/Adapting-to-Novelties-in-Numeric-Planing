;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_17)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.47354763108133047)
		(= (value_axe a1) 0.23597027938294424)

        (= (value_pickaxe p0) 0.38867353680962957)
		(= (value_pickaxe p1) 0.52720639178007)
		(= (value_pickaxe p2) 0.5643216527946262)
		(= (value_pickaxe p3) 0.6592069557344012)

        (= (value_shovel s0) 3.630325095758402)
		(= (value_shovel s1) 6.736125269267049)

        (= (value_hoe h0) 16.82967869066232)
		(= (value_hoe h1) 27.046011853409333)

        (= (trees_in_map) 20)

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

