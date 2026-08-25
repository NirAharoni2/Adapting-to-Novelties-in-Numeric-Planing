;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_42)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.552763117334797)
		(= (value_axe a1) 0.09128862911776703)
		(= (value_axe a2) 0.15767115418932887)

        (= (value_pickaxe p0) 0.44887817939802444)
		(= (value_pickaxe p1) 0.524972179611942)
		(= (value_pickaxe p2) 0.7512250768191358)
		(= (value_pickaxe p3) 0.09210358028096)
		(= (value_pickaxe p4) 0.10044675414412585)

        (= (value_shovel s0) 1.8890167414843502)
		(= (value_shovel s1) 4.064688214392797)
		(= (value_shovel s2) 3.4461518623367704)
		(= (value_shovel s3) 7.310316839696959)

        (= (value_hoe h0) 18.141613351958856)
		(= (value_hoe h1) 18.02671785198362)
		(= (value_hoe h2) 16.18068797724684)
		(= (value_hoe h3) 25.69066515503731)
		(= (value_hoe h4) 27.93630151654514)

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

