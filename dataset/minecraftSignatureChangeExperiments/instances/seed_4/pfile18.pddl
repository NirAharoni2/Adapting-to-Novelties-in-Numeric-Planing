;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_18)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.7035894857430419)
		(= (value_axe a1) 0.30967656796885434)
		(= (value_axe a2) 0.2303686048513136)
		(= (value_axe a3) 0.32661745352466864)

        (= (value_pickaxe p0) 0.6267967263591346)
		(= (value_pickaxe p1) 0.9964491684130127)
		(= (value_pickaxe p2) 0.8990177944514934)
		(= (value_pickaxe p3) 0.40021691848549845)
		(= (value_pickaxe p4) 0.40066003776723824)

        (= (value_shovel s0) 6.72243906700525)
		(= (value_shovel s1) 2.986398906022565)
		(= (value_shovel s2) 3.8809511074195884)

        (= (value_hoe h0) 10.2636662500029)
		(= (value_hoe h1) 13.677846178022119)
		(= (value_hoe h2) 20.803956010719396)
		(= (value_hoe h3) 23.865787321498182)
		(= (value_hoe h4) 22.295198116600723)

        (= (trees_in_map) 31)

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

