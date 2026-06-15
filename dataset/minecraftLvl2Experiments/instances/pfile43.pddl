;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_43)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.557717351802302)
		(= (value_axe a1) 0.8849533998940116)

        (= (value_pickaxe p0) 0.8575038288413007)
		(= (value_pickaxe p1) 0.20306909679745422)
		(= (value_pickaxe p2) 0.655381471979249)
		(= (value_pickaxe p3) 0.5979545713860807)

        (= (value_shovel s0) 1.7489545769070807)
		(= (value_shovel s1) 3.009347059486425)
		(= (value_shovel s2) 7.760582548573442)

        (= (value_hoe h0) 27.906110131122258)
		(= (value_hoe h1) 19.020665974274472)
		(= (value_hoe h2) 26.448517824828656)

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

