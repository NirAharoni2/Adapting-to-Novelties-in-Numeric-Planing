;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_94)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.2018888529197015)
		(= (value_axe a1) 0.7107393296766394)
		(= (value_axe a2) 0.02392613232833085)
		(= (value_axe a3) 0.6175976649320082)
		(= (value_axe a4) 0.4133794680999243)

        (= (value_pickaxe p0) 0.9602277627185937)
		(= (value_pickaxe p1) 0.4683724815939223)
		(= (value_pickaxe p2) 0.5609246509787391)

        (= (value_shovel s0) 7.282166914608441)
		(= (value_shovel s1) 7.342891726268605)
		(= (value_shovel s2) 2.8110426922667204)
		(= (value_shovel s3) 2.5873853412764993)
		(= (value_shovel s4) 4.415905977640616)

        (= (value_hoe h0) 15.062558065149965)
		(= (value_hoe h1) 15.325326038183837)
		(= (value_hoe h2) 22.297121419058453)
		(= (value_hoe h3) 29.330531295860027)

        (= (trees_in_map) 37)

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

