;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_62)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.18568515871064106)
		(= (value_axe a1) 0.7467858244193545)

        (= (value_pickaxe p0) 0.3190314800215194)
		(= (value_pickaxe p1) 0.8670965794682959)
		(= (value_pickaxe p2) 0.7905725325061019)
		(= (value_pickaxe p3) 0.8363151590962363)
		(= (value_pickaxe p4) 0.9614517636572604)

        (= (value_shovel s0) 4.249621409384898)
		(= (value_shovel s1) 6.578404223367252)
		(= (value_shovel s2) 5.9721377309151125)
		(= (value_shovel s3) 6.8042251542367085)
		(= (value_shovel s4) 2.1643188783561134)

        (= (value_hoe h0) 13.471470955932887)
		(= (value_hoe h1) 24.39742028648055)
		(= (value_hoe h2) 28.402776038482717)
		(= (value_hoe h3) 13.801725899177832)
		(= (value_hoe h4) 18.15157191899425)

        (= (trees_in_map) 37)

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

