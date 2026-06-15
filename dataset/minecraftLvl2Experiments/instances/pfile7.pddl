;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_7)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.7188398475296187)
		(= (value_axe a1) 0.6069699372974625)
		(= (value_axe a2) 0.2738833115076349)

        (= (value_pickaxe p0) 0.8810785345650081)
		(= (value_pickaxe p1) 0.07467163784999109)
		(= (value_pickaxe p2) 0.2642155702236557)
		(= (value_pickaxe p3) 0.052896519130274045)
		(= (value_pickaxe p4) 0.045870579672598666)

        (= (value_shovel s0) 5.035751395297132)
		(= (value_shovel s1) 1.0558999438991505)
		(= (value_shovel s2) 1.611615370412094)
		(= (value_shovel s3) 6.6290077923508886)

        (= (value_hoe h0) 16.621579231447434)
		(= (value_hoe h1) 11.948451331011434)
		(= (value_hoe h2) 20.01116892062415)

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

