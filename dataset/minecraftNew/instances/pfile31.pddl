;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_31)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.0639463280797069)
		(= (value_axe a1) 0.11182805947942742)
		(= (value_axe a2) 0.13016316746035306)
		(= (value_axe a3) 0.6344300141085454)
		(= (value_axe a4) 0.5878465375438012)

        (= (value_pickaxe p0) 0.45452645614099263)
		(= (value_pickaxe p1) 0.8146740886193904)
		(= (value_pickaxe p2) 0.6003364765810693)

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

