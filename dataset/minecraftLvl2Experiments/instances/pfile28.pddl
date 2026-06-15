;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_28)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.4323479901723244)
		(= (value_axe a1) 0.46054515046850086)
		(= (value_axe a2) 0.07984446007861079)

        (= (value_pickaxe p0) 0.12334405308606289)
		(= (value_pickaxe p1) 0.07723290828298113)
		(= (value_pickaxe p2) 0.1042996596593756)
		(= (value_pickaxe p3) 0.3702516265250274)
		(= (value_pickaxe p4) 0.2982581597096904)

        (= (value_shovel s0) 5.30242015216085)
		(= (value_shovel s1) 4.898888076087987)
		(= (value_shovel s2) 3.9890048967885017)
		(= (value_shovel s3) 4.066941971157978)

        (= (value_hoe h0) 27.68169562552024)
		(= (value_hoe h1) 18.059837147791345)

        (= (trees_in_map) 31)

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

