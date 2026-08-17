;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_44)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.4945398037553742)
		(= (value_axe a1) 0.9421208129208236)
		(= (value_axe a2) 0.8393050558800086)
		(= (value_axe a3) 0.43100519302159723)
		(= (value_axe a4) 0.35763665638547926)

        (= (value_pickaxe p0) 0.8822861369089738)
		(= (value_pickaxe p1) 0.7493271923100588)
		(= (value_pickaxe p2) 0.19710371003368676)
		(= (value_pickaxe p3) 0.3330804955951664)
		(= (value_pickaxe p4) 0.15281354088412513)

        (= (value_shovel s0) 4.78881010426968)
		(= (value_shovel s1) 7.638394623616056)
		(= (value_shovel s2) 7.410448146053259)
		(= (value_shovel s3) 7.824889338243482)
		(= (value_shovel s4) 4.389386954997682)

        (= (value_hoe h0) 21.994785635409436)
		(= (value_hoe h1) 12.716979379950642)

        (= (trees_in_map) 35)

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

