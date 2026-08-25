;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_64)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.7981918357256077)
		(= (value_axe a1) 0.23805992033281276)
		(= (value_axe a2) 0.6096457728668733)
		(= (value_axe a3) 0.1443734769227446)

        (= (value_pickaxe p0) 0.3414971804099921)
		(= (value_pickaxe p1) 0.11350154050725014)
		(= (value_pickaxe p2) 0.513043404908474)
		(= (value_pickaxe p3) 0.5430339175667197)

        (= (value_shovel s0) 5.3813331977432615)
		(= (value_shovel s1) 7.260918672285169)
		(= (value_shovel s2) 6.302325844563447)
		(= (value_shovel s3) 1.8503751443802765)

        (= (value_hoe h0) 21.655619892726044)
		(= (value_hoe h1) 19.605119511083625)
		(= (value_hoe h2) 14.184282926207576)
		(= (value_hoe h3) 22.63205019143944)
		(= (value_hoe h4) 29.06188475708833)

        (= (trees_in_map) 32)

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

