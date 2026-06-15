;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_65)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.0037775443543446308)
		(= (value_axe a1) 0.0425979544082028)

        (= (value_pickaxe p0) 0.35357810122284594)
		(= (value_pickaxe p1) 0.18228354066898245)
		(= (value_pickaxe p2) 0.4823695510766599)
		(= (value_pickaxe p3) 0.03323653941376181)

        (= (value_shovel s0) 1.49284605410203)
		(= (value_shovel s1) 4.443780858482893)
		(= (value_shovel s2) 2.5219780531702067)
		(= (value_shovel s3) 4.315517496838654)
		(= (value_shovel s4) 7.776416434149654)

        (= (value_hoe h0) 13.778381912463786)
		(= (value_hoe h1) 28.813002992723607)
		(= (value_hoe h2) 19.37248334745388)
		(= (value_hoe h3) 11.355219800670252)
		(= (value_hoe h4) 28.993312993012047)

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

