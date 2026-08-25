;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_27)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.7179676476832638)
		(= (value_axe a1) 0.35021275508999217)
		(= (value_axe a2) 0.5392953485205974)
		(= (value_axe a3) 0.33936514543806984)

        (= (value_pickaxe p0) 0.731133630003131)
		(= (value_pickaxe p1) 0.5714150405846471)

        (= (value_shovel s0) 1.7916675920313416)
		(= (value_shovel s1) 7.424686503730024)

        (= (value_hoe h0) 17.647713006125993)
		(= (value_hoe h1) 21.137771308999604)
		(= (value_hoe h2) 29.896616828087158)
		(= (value_hoe h3) 22.71065914603534)
		(= (value_hoe h4) 24.44576216960891)

        (= (trees_in_map) 36)

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

