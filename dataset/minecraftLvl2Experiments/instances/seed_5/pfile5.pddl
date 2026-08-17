;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_5)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.20848339304879704)
		(= (value_axe a1) 0.5128800541969205)
		(= (value_axe a2) 0.3626254865384637)
		(= (value_axe a3) 0.14819563433497784)

        (= (value_pickaxe p0) 0.27567637655286203)
		(= (value_pickaxe p1) 0.702606734224737)

        (= (value_shovel s0) 1.6445134221550268)
		(= (value_shovel s1) 5.801760816705226)
		(= (value_shovel s2) 3.143197478669467)
		(= (value_shovel s3) 6.591415319944721)
		(= (value_shovel s4) 5.387640379682751)

        (= (value_hoe h0) 24.42270080583909)
		(= (value_hoe h1) 16.186071633804858)

        (= (trees_in_map) 35)

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

