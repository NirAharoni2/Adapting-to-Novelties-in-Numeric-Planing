;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_64)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.8366397081160893)
		(= (value_axe a1) 0.7145264866620487)
		(= (value_axe a2) 0.2678158574604568)
		(= (value_axe a3) 0.3461276702346485)
		(= (value_axe a4) 0.3629670390307296)

        (= (value_pickaxe p0) 0.8656154881922729)
		(= (value_pickaxe p1) 0.6576829810348305)

        (= (value_shovel s0) 6.478987300505915)
		(= (value_shovel s1) 5.389626165368358)
		(= (value_shovel s2) 1.2795562451567073)
		(= (value_shovel s3) 6.936936614507718)

        (= (value_hoe h0) 14.126731639460978)
		(= (value_hoe h1) 29.427449520177035)
		(= (value_hoe h2) 12.138238545901022)

        (= (trees_in_map) 22)

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

