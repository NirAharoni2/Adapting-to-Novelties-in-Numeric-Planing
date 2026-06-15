;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_5)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.2722990049541628)
		(= (value_axe a1) 0.5266562105538134)
		(= (value_axe a2) 0.5750106794167877)
		(= (value_axe a3) 0.32830958809374544)
		(= (value_axe a4) 0.11478680184789192)

        (= (value_pickaxe p0) 0.3457687003199025)
		(= (value_pickaxe p1) 0.9042294474360212)
		(= (value_pickaxe p2) 0.386029108507849)
		(= (value_pickaxe p3) 0.8553322943932176)
		(= (value_pickaxe p4) 0.4910226009439034)

        (= (value_shovel s0) 4.329337923621392)
		(= (value_shovel s1) 5.018751192051977)
		(= (value_shovel s2) 6.541041034574257)

        (= (value_hoe h0) 24.84606310295152)
		(= (value_hoe h1) 23.405393455385358)
		(= (value_hoe h2) 23.964810220915496)
		(= (value_hoe h3) 20.74885446230513)
		(= (value_hoe h4) 22.630694829716496)

        (= (trees_in_map) 27)

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

