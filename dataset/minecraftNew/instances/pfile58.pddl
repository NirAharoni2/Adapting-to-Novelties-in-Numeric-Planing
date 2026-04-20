;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_58)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.6784262443676748)
		(= (value_axe a1) 0.16671317165840271)
		(= (value_axe a2) 0.5542987117475707)
		(= (value_axe a3) 0.7615113135506651)
		(= (value_axe a4) 0.5488858752653591)

        (= (value_pickaxe p0) 9.082908393853728e-05)
		(= (value_pickaxe p1) 0.2305412368730425)
		(= (value_pickaxe p2) 0.6647848861214455)
		(= (value_pickaxe p3) 0.8128179579260707)
		(= (value_pickaxe p4) 0.8256072154996875)

        (= (trees_in_map) 26)

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

