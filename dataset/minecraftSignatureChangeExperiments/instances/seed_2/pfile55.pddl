;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_55)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.1189787110145033)
		(= (value_axe a1) 0.10361666510260648)
		(= (value_axe a2) 0.7750255321834133)

        (= (value_pickaxe p0) 0.50462127335502)
		(= (value_pickaxe p1) 0.9214110288903143)
		(= (value_pickaxe p2) 0.9748618674097633)

        (= (value_shovel s0) 7.665685236627087)
		(= (value_shovel s1) 5.298896275086345)

        (= (value_hoe h0) 17.026926149614127)
		(= (value_hoe h1) 29.14270034785639)
		(= (value_hoe h2) 24.65167041765412)
		(= (value_hoe h3) 13.92006774399234)

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

