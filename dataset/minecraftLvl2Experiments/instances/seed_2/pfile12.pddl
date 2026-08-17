;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_12)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.8406116871188408)
		(= (value_axe a1) 0.672571754644766)

        (= (value_pickaxe p0) 0.01572207221433819)
		(= (value_pickaxe p1) 0.45142345920198235)

        (= (value_shovel s0) 3.874720629014549)
		(= (value_shovel s1) 4.401040608014008)
		(= (value_shovel s2) 2.457728253504584)
		(= (value_shovel s3) 5.121215435079458)

        (= (value_hoe h0) 11.47578626950506)
		(= (value_hoe h1) 15.687187019607718)
		(= (value_hoe h2) 17.45804210093936)

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

