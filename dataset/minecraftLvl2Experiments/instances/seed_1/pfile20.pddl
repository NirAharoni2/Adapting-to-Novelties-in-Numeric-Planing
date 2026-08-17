;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_51)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.9461053956418471)
		(= (value_axe a1) 0.9695992389771277)
		(= (value_axe a2) 0.10316984902710391)

        (= (value_pickaxe p0) 0.5528338602115798)
		(= (value_pickaxe p1) 0.41962922986529316)
		(= (value_pickaxe p2) 0.6716461609387466)
		(= (value_pickaxe p3) 0.11864663656894625)
		(= (value_pickaxe p4) 0.26533429089601646)

        (= (value_shovel s0) 2.951273651818126)
		(= (value_shovel s1) 4.357990575103788)
		(= (value_shovel s2) 6.552979841300413)
		(= (value_shovel s3) 7.0049325848648385)

        (= (value_hoe h0) 25.728472801181645)
		(= (value_hoe h1) 23.536136693398927)

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

