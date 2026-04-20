;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_28)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.11687778259393777)
		(= (value_axe a1) 0.6595469933076042)
		(= (value_axe a2) 0.7097732398777135)
		(= (value_axe a3) 0.3961995032583846)

        (= (value_pickaxe p0) 0.9708950200406041)
		(= (value_pickaxe p1) 0.4287824479409057)
		(= (value_pickaxe p2) 0.34168429073567064)
		(= (value_pickaxe p3) 0.9991198015707139)
		(= (value_pickaxe p4) 0.7030695561851305)

        (= (trees_in_map) 20)

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

