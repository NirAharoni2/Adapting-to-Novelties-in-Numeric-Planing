;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_68)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.2479157030445568)
		(= (value_axe a1) 0.7794770186017971)
		(= (value_axe a2) 0.11909343724707233)

        (= (value_pickaxe p0) 0.6438881683971543)
		(= (value_pickaxe p1) 0.38698731429640454)

        (= (value_shovel s0) 4.919737790987912)
		(= (value_shovel s1) 5.490054411478509)
		(= (value_shovel s2) 4.352464708051507)

        (= (value_hoe h0) 29.561882245313715)
		(= (value_hoe h1) 14.78386100789244)

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

