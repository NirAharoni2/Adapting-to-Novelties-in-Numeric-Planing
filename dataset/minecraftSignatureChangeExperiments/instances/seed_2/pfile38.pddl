;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_38)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.9704453085048914)
		(= (value_axe a1) 0.39180939938882886)
		(= (value_axe a2) 0.4747633409578357)

        (= (value_pickaxe p0) 0.37992811415215466)
		(= (value_pickaxe p1) 0.21511261344409716)
		(= (value_pickaxe p2) 0.2240779254955122)
		(= (value_pickaxe p3) 0.53260290268721)
		(= (value_pickaxe p4) 0.8174176282147076)

        (= (value_shovel s0) 1.6335159184064705)
		(= (value_shovel s1) 7.619483402406635)
		(= (value_shovel s2) 5.721649393626148)
		(= (value_shovel s3) 1.3767681249282895)
		(= (value_shovel s4) 5.94938582192543)

        (= (value_hoe h0) 18.03054976931455)
		(= (value_hoe h1) 20.293606262322477)

        (= (trees_in_map) 23)

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

