;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_61)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.2802740392534715)
		(= (value_axe a1) 0.874051936984644)
		(= (value_axe a2) 0.19388758811432583)
		(= (value_axe a3) 0.9928429817415537)
		(= (value_axe a4) 0.8543857406689207)

        (= (value_pickaxe p0) 0.061728388292082936)
		(= (value_pickaxe p1) 0.8091437297662842)
		(= (value_pickaxe p2) 0.055687594528003204)
		(= (value_pickaxe p3) 0.6426568079528557)
		(= (value_pickaxe p4) 0.694065173492748)

        (= (trees_in_map) 38)

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

