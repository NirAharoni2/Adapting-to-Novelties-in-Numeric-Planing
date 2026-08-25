;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_46)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.798160742835389)
		(= (value_axe a1) 0.725818500464358)
		(= (value_axe a2) 0.8140323746264132)
		(= (value_axe a3) 0.9981599522851606)
		(= (value_axe a4) 0.25656118547402607)

        (= (value_pickaxe p0) 0.20136363065451268)
		(= (value_pickaxe p1) 0.7467828134595477)
		(= (value_pickaxe p2) 0.7703325106256943)
		(= (value_pickaxe p3) 0.5142837977116697)
		(= (value_pickaxe p4) 0.4870758136839637)

        (= (value_shovel s0) 3.8262014933743487)
		(= (value_shovel s1) 7.178878512758602)
		(= (value_shovel s2) 6.573623143493888)
		(= (value_shovel s3) 5.092183187448828)

        (= (value_hoe h0) 10.802381687138418)
		(= (value_hoe h1) 27.02283188520101)
		(= (value_hoe h2) 19.169073552847095)

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

