;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_87)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.782816254870865)
		(= (value_axe a1) 0.36943188196153853)
		(= (value_axe a2) 0.8541217854566195)

        (= (value_pickaxe p0) 0.27807414816641784)
		(= (value_pickaxe p1) 0.8475248032484091)
		(= (value_pickaxe p2) 0.19782990847694182)
		(= (value_pickaxe p3) 0.4608069909761008)
		(= (value_pickaxe p4) 0.47319468380205887)

        (= (value_shovel s0) 5.879017677618438)
		(= (value_shovel s1) 6.121804997888471)

        (= (value_hoe h0) 28.679157576685682)
		(= (value_hoe h1) 16.598653566712404)

        (= (trees_in_map) 38)

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

