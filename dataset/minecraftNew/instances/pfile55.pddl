;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_55)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.05987990650176844)
		(= (value_axe a1) 0.1403974625589427)
		(= (value_axe a2) 0.23031605123773313)
		(= (value_axe a3) 0.8807917801991739)

        (= (value_pickaxe p0) 0.7201473889115576)
		(= (value_pickaxe p1) 0.967009615162193)
		(= (value_pickaxe p2) 0.16849284207160342)

        (= (trees_in_map) 40)

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

