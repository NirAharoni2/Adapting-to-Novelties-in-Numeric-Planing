;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_32)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.005851480710580059)
		(= (value_axe a1) 0.6979791755698395)
		(= (value_axe a2) 0.44744162283662603)
		(= (value_axe a3) 0.7433168126918647)
		(= (value_axe a4) 0.9227642322498618)

        (= (value_pickaxe p0) 0.7162781090916629)
		(= (value_pickaxe p1) 0.21147357758061613)
		(= (value_pickaxe p2) 0.33050646108040094)
		(= (value_pickaxe p3) 0.5976015519968622)
		(= (value_pickaxe p4) 0.05434121858072494)

        (= (value_shovel s0) 1.5487716598176795)
		(= (value_shovel s1) 2.1293915123957214)
		(= (value_shovel s2) 5.72792704916686)
		(= (value_shovel s3) 1.4273776357450374)

        (= (value_hoe h0) 26.701034548143937)
		(= (value_hoe h1) 14.820965319885648)
		(= (value_hoe h2) 16.65337884414513)
		(= (value_hoe h3) 10.391619909501653)

        (= (trees_in_map) 20)

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

