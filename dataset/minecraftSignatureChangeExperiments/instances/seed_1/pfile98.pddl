;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_98)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.222759383685043)
		(= (value_axe a1) 0.5061581722670944)

        (= (value_pickaxe p0) 0.26653932139917946)
		(= (value_pickaxe p1) 0.16237141361889618)
		(= (value_pickaxe p2) 0.07539677851977677)

        (= (value_shovel s0) 5.013833027890778)
		(= (value_shovel s1) 4.564838188198415)

        (= (value_hoe h0) 27.792296489992324)
		(= (value_hoe h1) 22.005347744160066)
		(= (value_hoe h2) 27.26754226415262)

        (= (trees_in_map) 33)

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

