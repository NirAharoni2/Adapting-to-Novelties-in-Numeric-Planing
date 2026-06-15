;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_93)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.33239376458908565)
		(= (value_axe a1) 0.84638997543463)
		(= (value_axe a2) 0.3212953968699317)

        (= (value_pickaxe p0) 0.9220285426288309)
		(= (value_pickaxe p1) 0.36480090684525335)
		(= (value_pickaxe p2) 0.47037102602754)
		(= (value_pickaxe p3) 0.060827825355122545)
		(= (value_pickaxe p4) 0.464382048816221)

        (= (value_shovel s0) 6.917838344781821)
		(= (value_shovel s1) 6.237380121331368)
		(= (value_shovel s2) 7.310333953676413)
		(= (value_shovel s3) 6.226009831784413)
		(= (value_shovel s4) 4.4031451964901205)

        (= (value_hoe h0) 10.39783406746302)
		(= (value_hoe h1) 10.46493324374142)

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

