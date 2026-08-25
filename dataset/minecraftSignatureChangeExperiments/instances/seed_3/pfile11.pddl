;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_11)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.8366986792786453)
		(= (value_axe a1) 0.6629872005284907)
		(= (value_axe a2) 0.5190149766457534)
		(= (value_axe a3) 0.2890418361415047)
		(= (value_axe a4) 0.341068714035333)

        (= (value_pickaxe p0) 0.2274663363511199)
		(= (value_pickaxe p1) 0.06806762410686229)
		(= (value_pickaxe p2) 0.5886777190190862)

        (= (value_shovel s0) 3.009078240692423)
		(= (value_shovel s1) 6.671343153057528)

        (= (value_hoe h0) 10.901536201707195)
		(= (value_hoe h1) 28.072185636006843)
		(= (value_hoe h2) 23.874112145945098)
		(= (value_hoe h3) 28.47709599114484)
		(= (value_hoe h4) 27.93134329968097)

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

