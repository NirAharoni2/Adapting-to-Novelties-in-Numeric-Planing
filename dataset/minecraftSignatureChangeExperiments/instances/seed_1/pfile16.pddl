;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_16)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.5416022629129655)
		(= (value_axe a1) 0.3073211178125135)
		(= (value_axe a2) 0.24638119608509224)
		(= (value_axe a3) 0.08136876538378779)
		(= (value_axe a4) 0.2807867235646755)

        (= (value_pickaxe p0) 0.9833767172194025)
		(= (value_pickaxe p1) 0.4479022405332955)
		(= (value_pickaxe p2) 0.6520105345126705)
		(= (value_pickaxe p3) 0.6434660802698416)

        (= (value_shovel s0) 7.585141655743)
		(= (value_shovel s1) 3.733349857972462)
		(= (value_shovel s2) 3.1474900639605954)
		(= (value_shovel s3) 3.290689902809932)

        (= (value_hoe h0) 16.33470293771204)
		(= (value_hoe h1) 26.9426953165243)
		(= (value_hoe h2) 27.87000491043202)

        (= (trees_in_map) 29)

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

