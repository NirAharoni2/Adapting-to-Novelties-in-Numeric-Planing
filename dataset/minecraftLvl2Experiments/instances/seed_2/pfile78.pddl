;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_78)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.8248000063519794)
		(= (value_axe a1) 0.912918759233672)

        (= (value_pickaxe p0) 0.2541582251970089)
		(= (value_pickaxe p1) 0.7644080581930711)

        (= (value_shovel s0) 2.276870750629581)
		(= (value_shovel s1) 4.4859684704814775)
		(= (value_shovel s2) 3.439174739411265)

        (= (value_hoe h0) 11.680457995139953)
		(= (value_hoe h1) 18.66350591083105)

        (= (trees_in_map) 37)

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

