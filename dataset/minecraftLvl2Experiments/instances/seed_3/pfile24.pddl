;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_24)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.8833507915940974)
		(= (value_axe a1) 0.0762439866768796)
		(= (value_axe a2) 0.43256124937928464)
		(= (value_axe a3) 0.4384192443429604)
		(= (value_axe a4) 0.5274837978837043)

        (= (value_pickaxe p0) 0.25092835796554125)
		(= (value_pickaxe p1) 0.5276885251796807)
		(= (value_pickaxe p2) 0.70070242415535)

        (= (value_shovel s0) 5.7489982948223854)
		(= (value_shovel s1) 3.5790308214818185)
		(= (value_shovel s2) 4.152882174169556)
		(= (value_shovel s3) 5.640312140667515)

        (= (value_hoe h0) 23.39933315725302)
		(= (value_hoe h1) 28.884395183034986)

        (= (trees_in_map) 28)

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

