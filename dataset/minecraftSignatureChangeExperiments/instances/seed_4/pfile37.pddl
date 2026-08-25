;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_37)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.4362493378213109)
		(= (value_axe a1) 0.1354954979687022)

        (= (value_pickaxe p0) 0.10401989493501085)
		(= (value_pickaxe p1) 0.7620020770811914)

        (= (value_shovel s0) 3.27026925679757)
		(= (value_shovel s1) 3.375578386001729)

        (= (value_hoe h0) 15.541685094379197)
		(= (value_hoe h1) 21.74494230528913)
		(= (value_hoe h2) 12.363811370737736)

        (= (trees_in_map) 40)

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

