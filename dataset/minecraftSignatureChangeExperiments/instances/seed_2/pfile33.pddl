;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_33)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.962900498575463)
		(= (value_axe a1) 0.15755179393378527)
		(= (value_axe a2) 0.324324262894209)

        (= (value_pickaxe p0) 0.8200037798087443)
		(= (value_pickaxe p1) 0.849799699354604)

        (= (value_shovel s0) 4.628721997011674)
		(= (value_shovel s1) 1.4727035454571773)
		(= (value_shovel s2) 7.286318174810674)
		(= (value_shovel s3) 5.674372345531156)
		(= (value_shovel s4) 1.2359034433030878)

        (= (value_hoe h0) 15.94835455108508)
		(= (value_hoe h1) 27.24172877103598)
		(= (value_hoe h2) 22.729091748940213)
		(= (value_hoe h3) 24.685356508529306)

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

