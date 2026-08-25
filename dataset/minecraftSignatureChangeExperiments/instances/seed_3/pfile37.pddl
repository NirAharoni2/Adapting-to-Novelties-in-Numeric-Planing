;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_37)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.438448430816865)
		(= (value_axe a1) 0.44447909131247665)
		(= (value_axe a2) 0.7027389517472311)
		(= (value_axe a3) 0.3451642935682644)

        (= (value_pickaxe p0) 0.8209310261140997)
		(= (value_pickaxe p1) 0.5070502662705559)
		(= (value_pickaxe p2) 0.7527429357596087)

        (= (value_shovel s0) 7.4054076669692135)
		(= (value_shovel s1) 5.878512566593265)
		(= (value_shovel s2) 7.646192382349055)
		(= (value_shovel s3) 1.2991348585279727)

        (= (value_hoe h0) 13.433516876503415)
		(= (value_hoe h1) 25.033297244154458)
		(= (value_hoe h2) 26.45592487855673)
		(= (value_hoe h3) 11.839922630556142)
		(= (value_hoe h4) 23.837183963854756)

        (= (trees_in_map) 23)

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

