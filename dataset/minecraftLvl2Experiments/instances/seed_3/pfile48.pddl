;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_48)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.0737328803821522)
		(= (value_axe a1) 0.13956708455170053)
		(= (value_axe a2) 0.8321848105420657)
		(= (value_axe a3) 0.101566712618959)

        (= (value_pickaxe p0) 0.7741738956563268)
		(= (value_pickaxe p1) 0.4441114846981443)
		(= (value_pickaxe p2) 0.2784383431296512)

        (= (value_shovel s0) 2.7890175220937463)
		(= (value_shovel s1) 2.981259358784831)
		(= (value_shovel s2) 4.708596498423325)
		(= (value_shovel s3) 5.040553317996465)

        (= (value_hoe h0) 12.793020981848004)
		(= (value_hoe h1) 10.755165727716157)
		(= (value_hoe h2) 19.711439736346563)

        (= (trees_in_map) 27)

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

