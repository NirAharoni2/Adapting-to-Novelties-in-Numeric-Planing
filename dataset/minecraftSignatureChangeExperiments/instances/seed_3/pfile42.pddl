;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_42)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.23614054494224235)
		(= (value_axe a1) 0.4390075660063867)
		(= (value_axe a2) 0.2509407566330337)

        (= (value_pickaxe p0) 0.32322995487811446)
		(= (value_pickaxe p1) 0.749536185942095)
		(= (value_pickaxe p2) 0.20693370496007002)
		(= (value_pickaxe p3) 0.218734412451992)

        (= (value_shovel s0) 7.12847345997411)
		(= (value_shovel s1) 6.145899215973932)

        (= (value_hoe h0) 19.271268536350956)
		(= (value_hoe h1) 24.225224038320274)
		(= (value_hoe h2) 27.051314028909786)
		(= (value_hoe h3) 17.355505518325284)

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

