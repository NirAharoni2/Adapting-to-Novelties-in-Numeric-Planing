;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_3)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.494883412249289)
		(= (value_axe a1) 0.2579812255910049)
		(= (value_axe a2) 0.6720412331533571)
		(= (value_axe a3) 0.7789725856978318)

        (= (value_pickaxe p0) 0.8552255801932975)
		(= (value_pickaxe p1) 0.42114851256640984)

        (= (value_shovel s0) 6.834339839973031)
		(= (value_shovel s1) 5.018159147026937)

        (= (value_hoe h0) 20.682061699788882)
		(= (value_hoe h1) 18.1515172994512)
		(= (value_hoe h2) 14.64772953155663)

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

