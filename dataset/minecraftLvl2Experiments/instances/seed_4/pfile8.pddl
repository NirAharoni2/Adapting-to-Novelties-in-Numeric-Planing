;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_8)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.43881418861912547)
		(= (value_axe a1) 0.49193865833334016)
		(= (value_axe a2) 0.2190615044625175)

        (= (value_pickaxe p0) 0.44350210762460507)
		(= (value_pickaxe p1) 0.6474356568552584)
		(= (value_pickaxe p2) 0.4278369309831196)
		(= (value_pickaxe p3) 0.21571977808013343)
		(= (value_pickaxe p4) 0.18771009170748554)

        (= (value_shovel s0) 1.2576417683121233)
		(= (value_shovel s1) 2.7737116493040608)
		(= (value_shovel s2) 4.679739970389443)

        (= (value_hoe h0) 25.446311865965523)
		(= (value_hoe h1) 18.342694322721584)
		(= (value_hoe h2) 15.23374485100832)

        (= (trees_in_map) 30)

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

