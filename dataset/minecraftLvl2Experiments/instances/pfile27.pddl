;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_27)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.2638807851438889)
		(= (value_axe a1) 0.23765187679679656)

        (= (value_pickaxe p0) 0.3271159525968881)
		(= (value_pickaxe p1) 0.8881421024984286)
		(= (value_pickaxe p2) 0.20688508525862925)
		(= (value_pickaxe p3) 0.742333964512065)
		(= (value_pickaxe p4) 0.9784404625860381)

        (= (value_shovel s0) 2.1576207794303652)
		(= (value_shovel s1) 7.346841558096028)
		(= (value_shovel s2) 5.0956985857957475)
		(= (value_shovel s3) 4.11802523556728)

        (= (value_hoe h0) 17.563127773190303)
		(= (value_hoe h1) 10.800693831568102)
		(= (value_hoe h2) 23.690179003942887)

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

