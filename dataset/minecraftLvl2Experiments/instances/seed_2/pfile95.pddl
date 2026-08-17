;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_95)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.2883476029192681)
		(= (value_axe a1) 0.6866363161056465)
		(= (value_axe a2) 0.6604003459494056)

        (= (value_pickaxe p0) 0.43687580898661527)
		(= (value_pickaxe p1) 0.6599637540280162)
		(= (value_pickaxe p2) 0.4590320885158762)

        (= (value_shovel s0) 1.9833348893751181)
		(= (value_shovel s1) 3.1616478213961194)
		(= (value_shovel s2) 4.630161626209512)
		(= (value_shovel s3) 5.0839568579911765)
		(= (value_shovel s4) 7.504917331345064)

        (= (value_hoe h0) 28.814302612839487)
		(= (value_hoe h1) 23.915852260988405)
		(= (value_hoe h2) 18.100235699696867)
		(= (value_hoe h3) 17.452243869950504)
		(= (value_hoe h4) 24.049899191835234)

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

