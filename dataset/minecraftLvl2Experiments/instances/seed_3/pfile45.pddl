;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_45)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.8868112739868407)
		(= (value_axe a1) 0.8071380170499853)
		(= (value_axe a2) 0.2973986249231626)
		(= (value_axe a3) 0.24260325677789885)

        (= (value_pickaxe p0) 0.806670170423149)
		(= (value_pickaxe p1) 0.010058075296037416)

        (= (value_shovel s0) 1.9203572750353217)
		(= (value_shovel s1) 4.716042481689099)
		(= (value_shovel s2) 4.750853539600968)
		(= (value_shovel s3) 2.16010582186859)
		(= (value_shovel s4) 1.3518184349950522)

        (= (value_hoe h0) 14.078785625647681)
		(= (value_hoe h1) 25.39994653957217)
		(= (value_hoe h2) 19.314954333736694)
		(= (value_hoe h3) 29.585793013220126)

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

