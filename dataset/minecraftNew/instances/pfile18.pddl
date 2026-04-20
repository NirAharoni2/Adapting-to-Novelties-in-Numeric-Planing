;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_18)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.18645489879888832)
		(= (value_axe a1) 0.2702479248942332)
		(= (value_axe a2) 0.8095561161827299)

        (= (value_pickaxe p0) 0.6503475012738434)
		(= (value_pickaxe p1) 0.1700992631262862)
		(= (value_pickaxe p2) 0.2001685947832087)

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

