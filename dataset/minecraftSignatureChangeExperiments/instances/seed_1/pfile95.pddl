;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_95)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.45634193989908867)
		(= (value_axe a1) 0.35188407686271306)
		(= (value_axe a2) 0.39604985682742566)
		(= (value_axe a3) 0.47131536536840735)

        (= (value_pickaxe p0) 0.017110372858409884)
		(= (value_pickaxe p1) 0.12734464781304777)
		(= (value_pickaxe p2) 0.16801566110709887)
		(= (value_pickaxe p3) 0.5668151611593164)

        (= (value_shovel s0) 7.101265548465428)
		(= (value_shovel s1) 5.979770690857309)
		(= (value_shovel s2) 2.0464660910406463)
		(= (value_shovel s3) 4.203787531809977)

        (= (value_hoe h0) 22.546083949839655)
		(= (value_hoe h1) 12.703820789026434)
		(= (value_hoe h2) 11.593777062394494)
		(= (value_hoe h3) 22.240766473693107)
		(= (value_hoe h4) 14.708567463748544)

        (= (trees_in_map) 40)

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

