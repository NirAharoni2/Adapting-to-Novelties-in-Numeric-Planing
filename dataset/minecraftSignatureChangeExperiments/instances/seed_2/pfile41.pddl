;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_41)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.4340573239161353)
		(= (value_axe a1) 0.6332254410402339)
		(= (value_axe a2) 0.34943389648544143)

        (= (value_pickaxe p0) 0.9749663248597409)
		(= (value_pickaxe p1) 0.5345061847220054)

        (= (value_shovel s0) 1.354872308932956)
		(= (value_shovel s1) 5.635848555990297)

        (= (value_hoe h0) 23.807991972613134)
		(= (value_hoe h1) 20.132420600893802)
		(= (value_hoe h2) 25.401869332126275)
		(= (value_hoe h3) 18.57227182677553)

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

