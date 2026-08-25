;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_35)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.814669276304247)
		(= (value_axe a1) 0.6291039660036514)
		(= (value_axe a2) 0.3447391414422116)
		(= (value_axe a3) 0.09371587676346804)
		(= (value_axe a4) 0.6823986354126962)

        (= (value_pickaxe p0) 0.9692673615320359)
		(= (value_pickaxe p1) 0.5922577203633888)
		(= (value_pickaxe p2) 0.003656253999381409)

        (= (value_shovel s0) 1.2121119183736102)
		(= (value_shovel s1) 1.6337410370522965)
		(= (value_shovel s2) 2.192337636062739)
		(= (value_shovel s3) 1.2562419650921228)

        (= (value_hoe h0) 11.078872857854519)
		(= (value_hoe h1) 23.086234854121216)

        (= (trees_in_map) 30)

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

