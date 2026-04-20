;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_72)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.46263426266929186)
		(= (value_axe a1) 0.6821019026357581)
		(= (value_axe a2) 0.05179847370735857)
		(= (value_axe a3) 0.2790142798836458)
		(= (value_axe a4) 0.510877644718575)

        (= (value_pickaxe p0) 0.9428305972651839)
		(= (value_pickaxe p1) 0.7001596613706687)
		(= (value_pickaxe p2) 0.5249496890186796)
		(= (value_pickaxe p3) 0.3177328616723172)
		(= (value_pickaxe p4) 0.3141138164116749)

        (= (trees_in_map) 29)

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

