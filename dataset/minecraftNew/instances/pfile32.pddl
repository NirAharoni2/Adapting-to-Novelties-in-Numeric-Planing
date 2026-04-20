;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_32)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.7040353887146602)
		(= (value_axe a1) 0.11118585603493314)
		(= (value_axe a2) 0.9062894921913806)
		(= (value_axe a3) 0.612675958587438)
		(= (value_axe a4) 0.925984777923714)

        (= (value_pickaxe p0) 0.750381141085547)
		(= (value_pickaxe p1) 0.9945172810290467)
		(= (value_pickaxe p2) 0.7704186082728923)

        (= (trees_in_map) 32)

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

