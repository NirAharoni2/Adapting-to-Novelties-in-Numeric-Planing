;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_96)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.3097403204237128)
		(= (value_axe a1) 0.42835880185678066)
		(= (value_axe a2) 0.5499662559722498)
		(= (value_axe a3) 0.8863479603058069)

        (= (value_pickaxe p0) 0.9163774259941546)
		(= (value_pickaxe p1) 0.8447924267933279)
		(= (value_pickaxe p2) 0.6845159628677568)

        (= (value_shovel s0) 1.484314514664948)
		(= (value_shovel s1) 2.3075260919114085)
		(= (value_shovel s2) 4.742245512044516)
		(= (value_shovel s3) 7.895892667234779)

        (= (value_hoe h0) 24.522930227967816)
		(= (value_hoe h1) 13.83327240489008)
		(= (value_hoe h2) 17.119944205191096)
		(= (value_hoe h3) 29.2492969879632)
		(= (value_hoe h4) 20.154919912575625)

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

