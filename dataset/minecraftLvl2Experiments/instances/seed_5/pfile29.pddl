;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_54)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.7020120491340093)
		(= (value_axe a1) 0.5920172622540643)
		(= (value_axe a2) 0.8752344059842949)
		(= (value_axe a3) 0.9151664964652239)

        (= (value_pickaxe p0) 0.8363517610500109)
		(= (value_pickaxe p1) 0.5938765565849992)
		(= (value_pickaxe p2) 0.5656269047554783)
		(= (value_pickaxe p3) 0.9016866441050941)
		(= (value_pickaxe p4) 0.35507491649104994)

        (= (value_shovel s0) 1.8642403041387303)
		(= (value_shovel s1) 4.191254461579408)
		(= (value_shovel s2) 5.856167858603275)

        (= (value_hoe h0) 22.220071031805432)
		(= (value_hoe h1) 23.48039967884402)
		(= (value_hoe h2) 22.991849786008554)

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

