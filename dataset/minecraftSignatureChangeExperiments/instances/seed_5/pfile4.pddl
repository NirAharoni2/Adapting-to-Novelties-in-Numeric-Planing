;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_4)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.36618447584186054)
		(= (value_axe a1) 0.5785188290568746)
		(= (value_axe a2) 0.009078386819528439)
		(= (value_axe a3) 0.04672711869894153)

        (= (value_pickaxe p0) 0.18091948795104784)
		(= (value_pickaxe p1) 0.9551798995911663)
		(= (value_pickaxe p2) 0.19652167051300817)
		(= (value_pickaxe p3) 0.7557364124513177)
		(= (value_pickaxe p4) 0.9296553195975211)

        (= (value_shovel s0) 7.594306805993895)
		(= (value_shovel s1) 3.410672691371084)

        (= (value_hoe h0) 17.095864101158245)
		(= (value_hoe h1) 20.4940364138624)
		(= (value_hoe h2) 25.512060293979907)
		(= (value_hoe h3) 12.161057381296658)
		(= (value_hoe h4) 24.96796112969326)

        (= (trees_in_map) 31)

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

