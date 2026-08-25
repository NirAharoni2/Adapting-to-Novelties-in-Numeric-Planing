;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_4)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.9646329473090614)
		(= (value_axe a1) 0.9046959845122367)

        (= (value_pickaxe p0) 0.5691075034743235)
		(= (value_pickaxe p1) 0.7138170201741992)
		(= (value_pickaxe p2) 0.2111249836755983)
		(= (value_pickaxe p3) 0.8316079302733542)

        (= (value_shovel s0) 5.014726466458994)
		(= (value_shovel s1) 2.9947022339034364)
		(= (value_shovel s2) 1.4442240400166053)

        (= (value_hoe h0) 27.078849768453605)
		(= (value_hoe h1) 29.796120298431624)
		(= (value_hoe h2) 11.770361862194568)
		(= (value_hoe h3) 26.011906425150038)

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

