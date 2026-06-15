;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_95)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.9160217432907407)
		(= (value_axe a1) 0.23541059235351813)

        (= (value_pickaxe p0) 0.5943507985071125)
		(= (value_pickaxe p1) 0.5999505575753316)
		(= (value_pickaxe p2) 0.7071238084510804)

        (= (value_shovel s0) 2.854642980415643)
		(= (value_shovel s1) 2.7449954740229083)
		(= (value_shovel s2) 3.6443008957200225)
		(= (value_shovel s3) 5.0886036580759075)

        (= (value_hoe h0) 16.70345487125428)
		(= (value_hoe h1) 22.94626226546156)
		(= (value_hoe h2) 19.713943126434266)
		(= (value_hoe h3) 14.13344701176533)
		(= (value_hoe h4) 18.344281237859146)

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

