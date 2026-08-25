;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_73)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.7080275524838395)
		(= (value_axe a1) 0.5528854205759203)

        (= (value_pickaxe p0) 0.6632453546758401)
		(= (value_pickaxe p1) 0.44270244436948913)

        (= (value_shovel s0) 2.2327419735993477)
		(= (value_shovel s1) 6.787438713117341)

        (= (value_hoe h0) 11.39924411200478)
		(= (value_hoe h1) 23.648937448655133)
		(= (value_hoe h2) 18.305884178106503)
		(= (value_hoe h3) 10.13645619640876)
		(= (value_hoe h4) 16.731579380965137)

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

