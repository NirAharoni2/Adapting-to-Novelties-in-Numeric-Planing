;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_62)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.5730767346811179)
		(= (value_axe a1) 0.3427348203946008)
		(= (value_axe a2) 0.5880271802313285)
		(= (value_axe a3) 0.5819267148642364)

        (= (value_pickaxe p0) 0.364423898011178)
		(= (value_pickaxe p1) 0.5180653509114633)
		(= (value_pickaxe p2) 0.31485022432137744)
		(= (value_pickaxe p3) 0.8601014532890677)
		(= (value_pickaxe p4) 0.5846960906501141)

        (= (value_shovel s0) 6.056950935467903)
		(= (value_shovel s1) 4.680354553647802)
		(= (value_shovel s2) 4.129429574453328)

        (= (value_hoe h0) 24.42665344965879)
		(= (value_hoe h1) 27.154430942548824)
		(= (value_hoe h2) 22.592665581987657)

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

