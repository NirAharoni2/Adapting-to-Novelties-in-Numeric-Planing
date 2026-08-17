;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_99)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.9879128391876844)
		(= (value_axe a1) 0.24004010750969085)
		(= (value_axe a2) 0.6879155560415753)
		(= (value_axe a3) 0.4378373999110583)

        (= (value_pickaxe p0) 0.5337336995254222)
		(= (value_pickaxe p1) 0.4046523444588148)
		(= (value_pickaxe p2) 0.7019297516940465)

        (= (value_shovel s0) 4.643618468737911)
		(= (value_shovel s1) 1.226923855230568)
		(= (value_shovel s2) 6.739025898311362)

        (= (value_hoe h0) 14.774897557676114)
		(= (value_hoe h1) 17.016881112916515)
		(= (value_hoe h2) 19.587145862192873)

        (= (trees_in_map) 39)

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

