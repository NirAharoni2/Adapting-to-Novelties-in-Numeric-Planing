;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_59)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.5144378828558556)
		(= (value_axe a1) 0.5704222300687084)
		(= (value_axe a2) 0.6189939094878856)

        (= (value_pickaxe p0) 0.19874924169285124)
		(= (value_pickaxe p1) 0.9804201321388208)
		(= (value_pickaxe p2) 0.6746797614521081)
		(= (value_pickaxe p3) 0.07231553299070848)

        (= (value_shovel s0) 7.6257577329558615)
		(= (value_shovel s1) 1.905202236161749)

        (= (value_hoe h0) 14.745332187080304)
		(= (value_hoe h1) 23.556679257053645)

        (= (trees_in_map) 32)

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

