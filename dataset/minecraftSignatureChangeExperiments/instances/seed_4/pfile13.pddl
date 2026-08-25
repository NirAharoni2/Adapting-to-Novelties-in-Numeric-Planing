;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_13)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.7873874826473551)
		(= (value_axe a1) 0.3111693739043967)

        (= (value_pickaxe p0) 0.23370059399837007)
		(= (value_pickaxe p1) 0.4866520006617505)
		(= (value_pickaxe p2) 0.9662786081437614)
		(= (value_pickaxe p3) 0.09511967060859683)
		(= (value_pickaxe p4) 0.11445112463649654)

        (= (value_shovel s0) 5.346732121620141)
		(= (value_shovel s1) 7.197400238820739)
		(= (value_shovel s2) 4.587322540559613)
		(= (value_shovel s3) 4.037672757441175)
		(= (value_shovel s4) 7.00490768982948)

        (= (value_hoe h0) 25.531724757587817)
		(= (value_hoe h1) 11.33835742303617)
		(= (value_hoe h2) 27.62649877976117)

        (= (trees_in_map) 26)

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

