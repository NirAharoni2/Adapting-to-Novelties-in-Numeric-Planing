;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_26)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.11791328925900202)
		(= (value_axe a1) 0.6685654694161578)

        (= (value_pickaxe p0) 0.29110066930859035)
		(= (value_pickaxe p1) 0.6744654121991172)
		(= (value_pickaxe p2) 0.7292980029702049)
		(= (value_pickaxe p3) 0.16322860891768431)
		(= (value_pickaxe p4) 0.20102243658011376)

        (= (value_shovel s0) 1.1745122747349774)
		(= (value_shovel s1) 2.613307309115564)
		(= (value_shovel s2) 1.5474232757320285)
		(= (value_shovel s3) 3.807495358450049)
		(= (value_shovel s4) 7.815158992610774)

        (= (value_hoe h0) 17.28506217606737)
		(= (value_hoe h1) 16.23678627378884)
		(= (value_hoe h2) 19.36073904655278)

        (= (trees_in_map) 29)

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

