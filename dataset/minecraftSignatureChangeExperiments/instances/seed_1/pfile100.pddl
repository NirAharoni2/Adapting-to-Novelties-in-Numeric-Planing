;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_100)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.5520982074454842)
		(= (value_axe a1) 0.9012556974021538)

        (= (value_pickaxe p0) 0.8532697064189038)
		(= (value_pickaxe p1) 0.49995714097588106)
		(= (value_pickaxe p2) 0.34950330209370717)

        (= (value_shovel s0) 4.417340297089079)
		(= (value_shovel s1) 4.578216770528667)
		(= (value_shovel s2) 5.6499658613700845)
		(= (value_shovel s3) 7.533086024002811)

        (= (value_hoe h0) 23.394804149389913)
		(= (value_hoe h1) 16.23124355153802)
		(= (value_hoe h2) 16.355010850786527)
		(= (value_hoe h3) 25.67415275765792)
		(= (value_hoe h4) 11.791970354455719)

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

