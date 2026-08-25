;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_81)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.31958277958820935)
		(= (value_axe a1) 0.9854584799088645)

        (= (value_pickaxe p0) 0.12816425771312023)
		(= (value_pickaxe p1) 0.5214349538137915)

        (= (value_shovel s0) 6.99359116287415)
		(= (value_shovel s1) 3.1307089313337104)
		(= (value_shovel s2) 3.0383831840365003)

        (= (value_hoe h0) 14.249597578379626)
		(= (value_hoe h1) 11.085321848508896)
		(= (value_hoe h2) 21.640907364682178)

        (= (trees_in_map) 37)

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

