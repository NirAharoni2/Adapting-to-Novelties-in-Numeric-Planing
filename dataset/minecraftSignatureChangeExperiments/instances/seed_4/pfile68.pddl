;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_68)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.26671110187038727)
		(= (value_axe a1) 0.7550144695150535)
		(= (value_axe a2) 0.2637715355557221)

        (= (value_pickaxe p0) 0.2985072067413943)
		(= (value_pickaxe p1) 0.7834418182640803)
		(= (value_pickaxe p2) 0.5629716866589131)

        (= (value_shovel s0) 6.671654751008702)
		(= (value_shovel s1) 7.081078449481214)
		(= (value_shovel s2) 7.742129229072794)

        (= (value_hoe h0) 11.729030821448948)
		(= (value_hoe h1) 17.85673796903967)

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

