;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_85)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.8320793007930175)
		(= (value_axe a1) 0.6756362678065964)
		(= (value_axe a2) 0.5244509972745295)
		(= (value_axe a3) 0.5634465051065645)
		(= (value_axe a4) 0.8057040452690749)

        (= (value_pickaxe p0) 0.6073820035137986)
		(= (value_pickaxe p1) 0.2591504026605581)
		(= (value_pickaxe p2) 0.3102432117958931)
		(= (value_pickaxe p3) 0.604604965130785)
		(= (value_pickaxe p4) 0.045848092302050114)

        (= (value_shovel s0) 4.203034521659908)
		(= (value_shovel s1) 7.2433480209764864)
		(= (value_shovel s2) 2.625006605356136)
		(= (value_shovel s3) 4.1090923135283095)
		(= (value_shovel s4) 5.896532113343442)

        (= (value_hoe h0) 28.510075559555204)
		(= (value_hoe h1) 23.925464449599207)
		(= (value_hoe h2) 22.516607514744273)

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

