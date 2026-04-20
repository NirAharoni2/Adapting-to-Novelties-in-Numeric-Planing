;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_10)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.38636755318415306)
		(= (value_axe a1) 0.050679461670166126)
		(= (value_axe a2) 0.9521697908573289)
		(= (value_axe a3) 0.8489767948085513)

        (= (value_pickaxe p0) 0.20116206674413462)
		(= (value_pickaxe p1) 0.02278408834437884)
		(= (value_pickaxe p2) 0.9116670004322991)

        (= (trees_in_map) 39)

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

