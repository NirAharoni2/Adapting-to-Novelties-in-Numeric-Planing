;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_88)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.768345378062664)
		(= (value_axe a1) 0.8451006642335716)

        (= (value_pickaxe p0) 0.6853481546884419)
		(= (value_pickaxe p1) 0.012372593399618381)
		(= (value_pickaxe p2) 0.3280047189765881)
		(= (value_pickaxe p3) 0.25829535688271354)
		(= (value_pickaxe p4) 0.5298605737643107)

        (= (value_shovel s0) 4.94032279274802)
		(= (value_shovel s1) 7.422881639025125)

        (= (value_hoe h0) 15.19677144490714)
		(= (value_hoe h1) 29.52994764572434)
		(= (value_hoe h2) 13.045038703866954)

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

