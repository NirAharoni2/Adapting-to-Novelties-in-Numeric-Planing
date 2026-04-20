;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_76)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.886788407425152)
		(= (value_axe a1) 0.9864504748739683)
		(= (value_axe a2) 0.9512304133233074)

        (= (value_pickaxe p0) 0.0006978082441367883)
		(= (value_pickaxe p1) 0.27110104064811913)
		(= (value_pickaxe p2) 0.9521969727543864)
		(= (value_pickaxe p3) 0.7245074427529726)
		(= (value_pickaxe p4) 0.23371155193625526)

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

