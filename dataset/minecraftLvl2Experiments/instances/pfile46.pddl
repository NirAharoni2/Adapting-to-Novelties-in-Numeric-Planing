;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_46)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.15392583913381164)
		(= (value_axe a1) 0.7024118491056933)

        (= (value_pickaxe p0) 0.28087351003980543)
		(= (value_pickaxe p1) 0.005032885518474806)
		(= (value_pickaxe p2) 0.6661567547654409)
		(= (value_pickaxe p3) 0.2194807496115594)

        (= (value_shovel s0) 2.235150801310573)
		(= (value_shovel s1) 6.947884779219708)

        (= (value_hoe h0) 27.713202548614152)
		(= (value_hoe h1) 15.211696789333686)
		(= (value_hoe h2) 27.515093080893966)
		(= (value_hoe h3) 27.08255586030991)
		(= (value_hoe h4) 24.789595949659983)

        (= (trees_in_map) 24)

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

