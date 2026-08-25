;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_99)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.1954671400271456)
		(= (value_axe a1) 0.8044630071085586)
		(= (value_axe a2) 0.2769231439025429)
		(= (value_axe a3) 0.22893928559866938)
		(= (value_axe a4) 0.14230193297255322)

        (= (value_pickaxe p0) 0.7725099042672551)
		(= (value_pickaxe p1) 0.02119947346742146)
		(= (value_pickaxe p2) 0.48571680011512175)
		(= (value_pickaxe p3) 0.1839474890328061)
		(= (value_pickaxe p4) 0.7833490771079766)

        (= (value_shovel s0) 1.5772214477349888)
		(= (value_shovel s1) 2.6612614076273218)
		(= (value_shovel s2) 5.872624554272203)

        (= (value_hoe h0) 14.22820465074147)
		(= (value_hoe h1) 18.825013584468195)
		(= (value_hoe h2) 23.119752436327055)
		(= (value_hoe h3) 22.032305500272678)

        (= (trees_in_map) 25)

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

