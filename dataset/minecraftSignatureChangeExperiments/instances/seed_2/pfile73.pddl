;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_73)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.12409706347035165)
		(= (value_axe a1) 0.8747022890965711)
		(= (value_axe a2) 0.1999114590010752)
		(= (value_axe a3) 0.22652769148913332)
		(= (value_axe a4) 0.8980340340286327)

        (= (value_pickaxe p0) 0.2790958473043532)
		(= (value_pickaxe p1) 0.9184227551303614)

        (= (value_shovel s0) 7.365227161905073)
		(= (value_shovel s1) 1.7937727973676774)

        (= (value_hoe h0) 29.622389794394238)
		(= (value_hoe h1) 13.641970719347075)
		(= (value_hoe h2) 21.925933704072694)

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

