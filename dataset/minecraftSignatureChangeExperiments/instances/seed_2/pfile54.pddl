;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_54)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.18633599271514734)
		(= (value_axe a1) 0.3081608076686787)
		(= (value_axe a2) 0.9250883996342679)

        (= (value_pickaxe p0) 0.8572255599434552)
		(= (value_pickaxe p1) 0.6963299538022867)

        (= (value_shovel s0) 4.214882794653468)
		(= (value_shovel s1) 1.4371173015069068)
		(= (value_shovel s2) 7.881230917562943)
		(= (value_shovel s3) 6.974246362823419)
		(= (value_shovel s4) 3.4565317142421)

        (= (value_hoe h0) 16.133573473150825)
		(= (value_hoe h1) 23.986113763606966)
		(= (value_hoe h2) 12.162092007668779)

        (= (trees_in_map) 26)

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

