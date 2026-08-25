;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_38)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 - pickaxe
		s0 s1 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.4499043335500984)
		(= (value_axe a1) 0.8968943273184334)
		(= (value_axe a2) 0.7328577834858824)
		(= (value_axe a3) 0.3337115943204053)

        (= (value_pickaxe p0) 0.3700930699830244)
		(= (value_pickaxe p1) 0.07205680902929257)
		(= (value_pickaxe p2) 0.399333028397552)

        (= (value_shovel s0) 7.6898372203852805)
		(= (value_shovel s1) 1.7349760559893561)

        (= (value_hoe h0) 21.377890156406618)
		(= (value_hoe h1) 12.202638007749139)

        (= (trees_in_map) 22)

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

