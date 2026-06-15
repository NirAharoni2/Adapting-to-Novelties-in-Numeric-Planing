;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_88)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.9122568574362296)
		(= (value_axe a1) 0.8685556962119271)
		(= (value_axe a2) 0.24608682789623837)
		(= (value_axe a3) 0.5939523589695679)
		(= (value_axe a4) 0.5866037191383388)

        (= (value_pickaxe p0) 0.3611835806514829)
		(= (value_pickaxe p1) 0.5298893596264659)
		(= (value_pickaxe p2) 0.0001987300911591161)

        (= (value_shovel s0) 7.436873881717187)
		(= (value_shovel s1) 6.119587238446941)

        (= (value_hoe h0) 10.176802341826468)
		(= (value_hoe h1) 25.83100639656679)
		(= (value_hoe h2) 25.803319040965743)
		(= (value_hoe h3) 27.764940755538355)

        (= (trees_in_map) 38)

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

