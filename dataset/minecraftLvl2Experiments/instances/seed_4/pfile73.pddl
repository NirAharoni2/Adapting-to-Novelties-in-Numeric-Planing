;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_73)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.5130924133714713)
		(= (value_axe a1) 0.7595195637897191)
		(= (value_axe a2) 0.7223647904381267)
		(= (value_axe a3) 0.3912753293850256)

        (= (value_pickaxe p0) 0.9794619059335032)
		(= (value_pickaxe p1) 0.2908907453833631)
		(= (value_pickaxe p2) 0.6871392833715358)
		(= (value_pickaxe p3) 0.4856805528488469)
		(= (value_pickaxe p4) 0.06787595477912745)

        (= (value_shovel s0) 3.7898769762171503)
		(= (value_shovel s1) 5.170986799512986)
		(= (value_shovel s2) 7.149492676678287)
		(= (value_shovel s3) 5.478234004552263)
		(= (value_shovel s4) 7.684911255988123)

        (= (value_hoe h0) 10.513537791019061)
		(= (value_hoe h1) 29.44587590220255)
		(= (value_hoe h2) 10.370591555532691)
		(= (value_hoe h3) 19.862238993273)

        (= (trees_in_map) 31)

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

