;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_72)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.4259181902991106)
		(= (value_axe a1) 0.965399989166476)
		(= (value_axe a2) 0.30236528158351983)

        (= (value_pickaxe p0) 0.8660290828096049)
		(= (value_pickaxe p1) 0.10791483698009263)
		(= (value_pickaxe p2) 0.0959422533259291)
		(= (value_pickaxe p3) 0.39497448050924533)
		(= (value_pickaxe p4) 0.7558149078711631)

        (= (value_shovel s0) 2.9060473692685136)
		(= (value_shovel s1) 2.2995719627518834)
		(= (value_shovel s2) 6.099743883820086)
		(= (value_shovel s3) 6.935544273233051)

        (= (value_hoe h0) 21.38980653084748)
		(= (value_hoe h1) 27.671010738460357)
		(= (value_hoe h2) 20.178946793036996)

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

