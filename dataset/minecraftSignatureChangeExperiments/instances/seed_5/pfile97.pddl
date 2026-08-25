;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_97)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.42096973517579184)
		(= (value_axe a1) 0.8361190032007627)
		(= (value_axe a2) 0.21997072247221416)
		(= (value_axe a3) 0.1805101540079047)
		(= (value_axe a4) 0.7127278814663162)

        (= (value_pickaxe p0) 0.9171393068950673)
		(= (value_pickaxe p1) 0.34185650855619865)
		(= (value_pickaxe p2) 0.04459606926997861)
		(= (value_pickaxe p3) 0.7769824877103614)
		(= (value_pickaxe p4) 0.9095422755136774)

        (= (value_shovel s0) 3.992850946414788)
		(= (value_shovel s1) 4.678391235349089)
		(= (value_shovel s2) 7.214840772244864)
		(= (value_shovel s3) 5.70227273594634)

        (= (value_hoe h0) 12.274215732213792)
		(= (value_hoe h1) 29.965029834865504)
		(= (value_hoe h2) 17.396759274522154)
		(= (value_hoe h3) 17.903336303337916)

        (= (trees_in_map) 38)

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

