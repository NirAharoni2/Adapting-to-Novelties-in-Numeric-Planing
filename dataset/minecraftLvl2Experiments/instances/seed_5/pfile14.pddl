;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_14)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.4934102020524038)
		(= (value_axe a1) 0.47957477698068784)
		(= (value_axe a2) 0.7082985369844774)
		(= (value_axe a3) 0.3838915449465743)
		(= (value_axe a4) 0.854964553667212)

        (= (value_pickaxe p0) 0.15902737971998726)
		(= (value_pickaxe p1) 0.5939504970597077)
		(= (value_pickaxe p2) 0.7410262225641352)
		(= (value_pickaxe p3) 0.30080270391930264)
		(= (value_pickaxe p4) 0.25106828224280264)

        (= (value_shovel s0) 1.1376992108975927)
		(= (value_shovel s1) 7.616232453956719)
		(= (value_shovel s2) 3.1524190116098745)
		(= (value_shovel s3) 7.506811782753381)
		(= (value_shovel s4) 2.003039921362325)

        (= (value_hoe h0) 10.4754984560439)
		(= (value_hoe h1) 23.20117691482404)
		(= (value_hoe h2) 29.21661860398466)

        (= (trees_in_map) 27)

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

