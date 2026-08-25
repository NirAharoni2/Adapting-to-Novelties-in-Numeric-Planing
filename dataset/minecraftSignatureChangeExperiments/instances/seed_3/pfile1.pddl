;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_1)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.625720304108054)
		(= (value_axe a1) 0.06552885923981311)
		(= (value_axe a2) 0.013167991554874137)

        (= (value_pickaxe p0) 0.83746908209646)
		(= (value_pickaxe p1) 0.25935401432800764)
		(= (value_pickaxe p2) 0.23433096104669637)

        (= (value_shovel s0) 7.969513848573239)
		(= (value_shovel s1) 4.291844552657135)
		(= (value_shovel s2) 6.855230158920722)
		(= (value_shovel s3) 4.334472460895345)

        (= (value_hoe h0) 22.781362810883238)
		(= (value_hoe h1) 13.01232848047048)
		(= (value_hoe h2) 22.69721316570377)
		(= (value_hoe h3) 27.360906142865936)
		(= (value_hoe h4) 20.463624207666026)

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

