;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_69)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.40262074694107586)
		(= (value_axe a1) 0.4509981881627525)
		(= (value_axe a2) 0.40871249855258707)
		(= (value_axe a3) 0.026330569937143444)
		(= (value_axe a4) 0.45570770297064156)

        (= (value_pickaxe p0) 0.7676671236852753)
		(= (value_pickaxe p1) 0.6934394366111105)
		(= (value_pickaxe p2) 0.8602868232019484)

        (= (value_shovel s0) 5.780554502210632)
		(= (value_shovel s1) 6.339170833264054)
		(= (value_shovel s2) 7.09512532970885)

        (= (value_hoe h0) 28.34296515919953)
		(= (value_hoe h1) 25.860840948299177)
		(= (value_hoe h2) 18.321847740405772)

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

