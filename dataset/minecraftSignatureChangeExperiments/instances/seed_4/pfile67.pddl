;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_67)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.7059810775782225)
		(= (value_axe a1) 0.5782255958265713)

        (= (value_pickaxe p0) 0.5858681011688102)
		(= (value_pickaxe p1) 0.11773338303043734)
		(= (value_pickaxe p2) 0.8646079385011576)

        (= (value_shovel s0) 5.702205300684259)
		(= (value_shovel s1) 5.991062720324915)
		(= (value_shovel s2) 5.713723478048046)
		(= (value_shovel s3) 6.060471352476405)
		(= (value_shovel s4) 6.104183155016985)

        (= (value_hoe h0) 27.73395004044462)
		(= (value_hoe h1) 18.075542832933674)
		(= (value_hoe h2) 11.984029148459461)
		(= (value_hoe h3) 29.23054117411895)

        (= (trees_in_map) 38)

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

