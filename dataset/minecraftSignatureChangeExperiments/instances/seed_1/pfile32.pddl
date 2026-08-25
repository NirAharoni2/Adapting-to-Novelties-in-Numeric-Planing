;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_32)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.9331238252043201)
		(= (value_axe a1) 0.24842649538376893)

        (= (value_pickaxe p0) 0.26909146599397704)
		(= (value_pickaxe p1) 0.0725393341920264)
		(= (value_pickaxe p2) 0.7323235583724791)
		(= (value_pickaxe p3) 0.8710531292337911)
		(= (value_pickaxe p4) 0.57914658966345)

        (= (value_shovel s0) 5.070031973660104)
		(= (value_shovel s1) 7.53053079618316)
		(= (value_shovel s2) 2.0372605043934233)
		(= (value_shovel s3) 7.61833031351781)

        (= (value_hoe h0) 19.18783061602597)
		(= (value_hoe h1) 13.250715902242025)
		(= (value_hoe h2) 25.56926476033002)
		(= (value_hoe h3) 27.877404200397397)
		(= (value_hoe h4) 18.81362756506946)

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

