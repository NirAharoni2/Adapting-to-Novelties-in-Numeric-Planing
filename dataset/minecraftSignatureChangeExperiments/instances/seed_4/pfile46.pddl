;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_46)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.035691339083168794)
		(= (value_axe a1) 0.11111040950918238)
		(= (value_axe a2) 0.7365431013572369)

        (= (value_pickaxe p0) 0.2427876980959639)
		(= (value_pickaxe p1) 0.473097643242124)
		(= (value_pickaxe p2) 0.535450116270209)
		(= (value_pickaxe p3) 0.5444105164261847)

        (= (value_shovel s0) 2.1422430665670964)
		(= (value_shovel s1) 2.373879388257973)

        (= (value_hoe h0) 27.07279625439531)
		(= (value_hoe h1) 20.266673981516238)

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

