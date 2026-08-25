;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_75)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.168056577149849)
		(= (value_axe a1) 0.19396716419146087)

        (= (value_pickaxe p0) 0.4226049556692041)
		(= (value_pickaxe p1) 0.8441577648885755)
		(= (value_pickaxe p2) 0.8519344292272363)

        (= (value_shovel s0) 7.9505173773876425)
		(= (value_shovel s1) 2.9115464625636367)
		(= (value_shovel s2) 5.36005854624702)
		(= (value_shovel s3) 7.110987471542276)

        (= (value_hoe h0) 17.53199371978991)
		(= (value_hoe h1) 21.739687322790942)

        (= (trees_in_map) 27)

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

