;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_81)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.7198857289786278)
		(= (value_axe a1) 0.49103745697686585)

        (= (value_pickaxe p0) 0.01048730140270937)
		(= (value_pickaxe p1) 0.30472247652596063)
		(= (value_pickaxe p2) 0.8495536985415229)
		(= (value_pickaxe p3) 0.8509510312619134)
		(= (value_pickaxe p4) 0.7294850032527339)

        (= (value_shovel s0) 6.120107317652019)
		(= (value_shovel s1) 7.382332478490907)
		(= (value_shovel s2) 4.900179241061995)

        (= (value_hoe h0) 17.666283796002936)
		(= (value_hoe h1) 21.463966831121585)
		(= (value_hoe h2) 15.648579669661391)

        (= (trees_in_map) 21)

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

