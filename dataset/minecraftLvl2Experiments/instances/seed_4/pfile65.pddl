;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_65)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.7413920007438813)
		(= (value_axe a1) 0.11124010011750296)
		(= (value_axe a2) 0.31518419818612176)
		(= (value_axe a3) 0.2903813317065729)

        (= (value_pickaxe p0) 0.25301019072159836)
		(= (value_pickaxe p1) 0.6574595395822614)
		(= (value_pickaxe p2) 0.3093876991991933)
		(= (value_pickaxe p3) 0.5230768397793072)
		(= (value_pickaxe p4) 0.5342725738296012)

        (= (value_shovel s0) 4.1085487877003715)
		(= (value_shovel s1) 2.8075327019386993)
		(= (value_shovel s2) 1.0079939579022668)
		(= (value_shovel s3) 4.670437414396652)
		(= (value_shovel s4) 1.464166149025774)

        (= (value_hoe h0) 15.208147711658276)
		(= (value_hoe h1) 21.879120478063356)
		(= (value_hoe h2) 24.685109636022062)

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

