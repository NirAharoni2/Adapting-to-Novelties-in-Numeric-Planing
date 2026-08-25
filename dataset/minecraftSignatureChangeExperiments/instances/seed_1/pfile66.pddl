;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_66)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.3761207194225269)
		(= (value_axe a1) 0.10897250323749441)
		(= (value_axe a2) 0.02622382083834418)
		(= (value_axe a3) 0.0745859588783212)

        (= (value_pickaxe p0) 0.18296553536353388)
		(= (value_pickaxe p1) 0.7660771785454262)
		(= (value_pickaxe p2) 0.6672214232537149)

        (= (value_shovel s0) 6.585096841339757)
		(= (value_shovel s1) 3.019523906899308)
		(= (value_shovel s2) 2.088577107191239)

        (= (value_hoe h0) 29.442005384654315)
		(= (value_hoe h1) 26.520498261710273)

        (= (trees_in_map) 28)

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

