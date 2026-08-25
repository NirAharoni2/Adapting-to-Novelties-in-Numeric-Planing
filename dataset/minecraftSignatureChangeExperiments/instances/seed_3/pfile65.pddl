;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_65)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.07861170758826297)
		(= (value_axe a1) 0.5363246117504874)
		(= (value_axe a2) 0.45712567485991007)
		(= (value_axe a3) 0.017981824122315748)

        (= (value_pickaxe p0) 0.17646642229313003)
		(= (value_pickaxe p1) 0.5197196744283608)
		(= (value_pickaxe p2) 0.41960210863997305)
		(= (value_pickaxe p3) 0.49490004198167514)
		(= (value_pickaxe p4) 0.3891525478471969)

        (= (value_shovel s0) 4.504462770393809)
		(= (value_shovel s1) 4.397196795207916)
		(= (value_shovel s2) 3.8431017247489914)
		(= (value_shovel s3) 5.33364216522795)

        (= (value_hoe h0) 25.162224051165893)
		(= (value_hoe h1) 12.296157288086409)

        (= (trees_in_map) 33)

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

