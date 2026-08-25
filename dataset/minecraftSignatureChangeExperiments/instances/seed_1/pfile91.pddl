;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_91)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.20010978926913914)
		(= (value_axe a1) 0.2953631399699346)

        (= (value_pickaxe p0) 0.550665754985187)
		(= (value_pickaxe p1) 0.25137969768636803)

        (= (value_shovel s0) 2.6346158704066713)
		(= (value_shovel s1) 2.4752419795108467)
		(= (value_shovel s2) 7.209007161992788)

        (= (value_hoe h0) 14.771826709835842)
		(= (value_hoe h1) 21.10660324998957)
		(= (value_hoe h2) 19.052668070099784)
		(= (value_hoe h3) 16.628099132580495)
		(= (value_hoe h4) 18.13520328994803)

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

