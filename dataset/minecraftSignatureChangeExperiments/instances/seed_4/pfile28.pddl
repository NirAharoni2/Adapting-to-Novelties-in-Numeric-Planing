;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_28)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.16646910528475245)
		(= (value_axe a1) 0.24416080503968207)
		(= (value_axe a2) 0.8432472131798072)
		(= (value_axe a3) 0.11400405911759004)

        (= (value_pickaxe p0) 0.9713945412345196)
		(= (value_pickaxe p1) 0.29660408101416)

        (= (value_shovel s0) 4.970758311997905)
		(= (value_shovel s1) 5.624462284560097)
		(= (value_shovel s2) 7.349125610469654)
		(= (value_shovel s3) 1.5299816029662763)
		(= (value_shovel s4) 6.9275281798460835)

        (= (value_hoe h0) 13.585415765506376)
		(= (value_hoe h1) 24.365645758351068)
		(= (value_hoe h2) 10.54439660250093)

        (= (trees_in_map) 25)

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

