;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_81)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.4821356483809466)
		(= (value_axe a1) 0.37019580903779936)
		(= (value_axe a2) 0.4305989467175386)
		(= (value_axe a3) 0.45921990675720037)
		(= (value_axe a4) 0.05788053677399574)

        (= (value_pickaxe p0) 0.0934397178276204)
		(= (value_pickaxe p1) 0.842688257162734)
		(= (value_pickaxe p2) 0.23278070122049854)
		(= (value_pickaxe p3) 0.03447508175599756)
		(= (value_pickaxe p4) 0.7558748525473935)

        (= (trees_in_map) 33)

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

