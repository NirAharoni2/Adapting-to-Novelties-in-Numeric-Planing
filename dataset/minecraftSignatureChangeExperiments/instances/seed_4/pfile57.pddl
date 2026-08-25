;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_57)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.1092021102938957)
		(= (value_axe a1) 0.9220172048184649)
		(= (value_axe a2) 0.9692361787263325)
		(= (value_axe a3) 0.8288090585893749)

        (= (value_pickaxe p0) 0.2736122649588648)
		(= (value_pickaxe p1) 0.45168382615873837)
		(= (value_pickaxe p2) 0.9489561231453852)
		(= (value_pickaxe p3) 0.7754119476515329)
		(= (value_pickaxe p4) 0.07246910508221716)

        (= (value_shovel s0) 3.2737929807223596)
		(= (value_shovel s1) 4.787294090844345)
		(= (value_shovel s2) 7.25180466484)

        (= (value_hoe h0) 28.085854191756866)
		(= (value_hoe h1) 18.778060849165556)

        (= (trees_in_map) 20)

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

