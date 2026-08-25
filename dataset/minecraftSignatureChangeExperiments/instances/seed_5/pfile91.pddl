;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_91)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.21617014977196913)
		(= (value_axe a1) 0.43624593317595206)
		(= (value_axe a2) 0.3145805606208697)

        (= (value_pickaxe p0) 0.7912736024617797)
		(= (value_pickaxe p1) 0.2373563670708584)
		(= (value_pickaxe p2) 0.28687082058490454)
		(= (value_pickaxe p3) 0.2348792176093324)

        (= (value_shovel s0) 7.400547567605456)
		(= (value_shovel s1) 6.35575213096067)
		(= (value_shovel s2) 7.951217502750116)
		(= (value_shovel s3) 1.7299722016086332)
		(= (value_shovel s4) 4.912236961356804)

        (= (value_hoe h0) 15.060184913501473)
		(= (value_hoe h1) 20.630485344495707)
		(= (value_hoe h2) 22.60062683655877)
		(= (value_hoe h3) 10.869511238342145)

        (= (trees_in_map) 23)

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

