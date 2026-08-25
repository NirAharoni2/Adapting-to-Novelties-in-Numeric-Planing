;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_35)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.27704472706993644)
		(= (value_axe a1) 0.2011564173044751)
		(= (value_axe a2) 0.5624325313853045)
		(= (value_axe a3) 0.3569892403823628)
		(= (value_axe a4) 0.7510801388714036)

        (= (value_pickaxe p0) 0.24155821924395726)
		(= (value_pickaxe p1) 0.3517708913150498)
		(= (value_pickaxe p2) 0.24823921780460634)
		(= (value_pickaxe p3) 0.9824205909903201)
		(= (value_pickaxe p4) 0.8402099155516742)

        (= (value_shovel s0) 6.948839220661369)
		(= (value_shovel s1) 5.327079411302772)
		(= (value_shovel s2) 3.8060016367153406)

        (= (value_hoe h0) 12.861083022181116)
		(= (value_hoe h1) 26.633580213536035)
		(= (value_hoe h2) 19.802260157700317)

        (= (trees_in_map) 21)

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

