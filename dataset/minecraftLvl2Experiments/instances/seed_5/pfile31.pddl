;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_31)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.0480311118334702)
		(= (value_axe a1) 0.1998539402796412)
		(= (value_axe a2) 0.2860183111031329)
		(= (value_axe a3) 0.3737626737768194)

        (= (value_pickaxe p0) 0.09853097104933284)
		(= (value_pickaxe p1) 0.42057797886026604)

        (= (value_shovel s0) 3.197506350718817)
		(= (value_shovel s1) 6.266220423466221)
		(= (value_shovel s2) 4.89258914441263)
		(= (value_shovel s3) 7.272629864524027)
		(= (value_shovel s4) 5.578686807917304)

        (= (value_hoe h0) 25.194374193481092)
		(= (value_hoe h1) 21.494578574347344)
		(= (value_hoe h2) 18.84365203134291)

        (= (trees_in_map) 40)

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

