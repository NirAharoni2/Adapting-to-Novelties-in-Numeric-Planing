;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_95)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.6788506805698553)
		(= (value_axe a1) 0.31885274605362934)
		(= (value_axe a2) 0.570777872844337)
		(= (value_axe a3) 0.5596455130660734)
		(= (value_axe a4) 0.34952654586875065)

        (= (value_pickaxe p0) 0.7846061573817665)
		(= (value_pickaxe p1) 0.3490682063951863)

        (= (value_shovel s0) 3.6364424008347194)
		(= (value_shovel s1) 4.17997449636918)

        (= (value_hoe h0) 23.400521531998578)
		(= (value_hoe h1) 18.10039401917284)
		(= (value_hoe h2) 19.270292508741633)

        (= (trees_in_map) 32)

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

