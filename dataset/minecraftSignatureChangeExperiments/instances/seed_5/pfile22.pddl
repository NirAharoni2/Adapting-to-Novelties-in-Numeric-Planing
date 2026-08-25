;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_22)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 - pickaxe
		s0 s1 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.8633848885058732)
		(= (value_axe a1) 0.5064670413283575)
		(= (value_axe a2) 0.45350130080122564)
		(= (value_axe a3) 0.38985211310481016)

        (= (value_pickaxe p0) 0.46263554305186805)
		(= (value_pickaxe p1) 0.9633005509025323)

        (= (value_shovel s0) 1.7530169529858608)
		(= (value_shovel s1) 4.714917877362868)

        (= (value_hoe h0) 20.84201689437131)
		(= (value_hoe h1) 17.69238890016961)

        (= (trees_in_map) 24)

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

