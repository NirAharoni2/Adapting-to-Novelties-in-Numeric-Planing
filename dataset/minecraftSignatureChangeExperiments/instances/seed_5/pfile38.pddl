;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_51)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.4188531430991196)
		(= (value_axe a1) 0.5041630470469837)

        (= (value_pickaxe p0) 0.6105046438875008)
		(= (value_pickaxe p1) 0.7928947233164426)

        (= (value_shovel s0) 1.3924165042545087)
		(= (value_shovel s1) 4.503839125258112)

        (= (value_hoe h0) 10.765809668935603)
		(= (value_hoe h1) 17.70977093042798)
		(= (value_hoe h2) 16.915069338160734)

        (= (trees_in_map) 20)

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

