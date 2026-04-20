;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_63)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.915827661065706)
		(= (value_axe a1) 0.42716809389973687)
		(= (value_axe a2) 0.5365171219993161)
		(= (value_axe a3) 0.030747072017126564)
		(= (value_axe a4) 0.4494149253224129)

        (= (value_pickaxe p0) 0.6033715013112664)
		(= (value_pickaxe p1) 0.10196578443410587)

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

