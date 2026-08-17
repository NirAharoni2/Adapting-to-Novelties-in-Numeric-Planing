;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_74)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.2895156768083109)
		(= (value_axe a1) 0.48061857779447814)
		(= (value_axe a2) 0.8626969770274945)
		(= (value_axe a3) 0.8037439154978456)

        (= (value_pickaxe p0) 0.38479520437263026)
		(= (value_pickaxe p1) 0.14297534040106163)
		(= (value_pickaxe p2) 0.2000007393021931)

        (= (value_shovel s0) 4.8879320078346895)
		(= (value_shovel s1) 6.0662503977794655)
		(= (value_shovel s2) 1.6584233711916347)
		(= (value_shovel s3) 2.885939287000015)
		(= (value_shovel s4) 3.9484128667943033)

        (= (value_hoe h0) 19.56227037122296)
		(= (value_hoe h1) 12.034487548581417)
		(= (value_hoe h2) 23.00080239927096)

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

