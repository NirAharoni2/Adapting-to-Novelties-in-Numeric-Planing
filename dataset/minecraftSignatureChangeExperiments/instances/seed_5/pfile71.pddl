;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_71)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.4877767276050209)
		(= (value_axe a1) 0.36758260433967205)

        (= (value_pickaxe p0) 0.9882027958220502)
		(= (value_pickaxe p1) 0.7229322314397566)
		(= (value_pickaxe p2) 0.36964886454477963)
		(= (value_pickaxe p3) 0.8855369946186897)
		(= (value_pickaxe p4) 0.26470345857239563)

        (= (value_shovel s0) 5.000765146008356)
		(= (value_shovel s1) 7.202689784996782)
		(= (value_shovel s2) 3.304495157719402)
		(= (value_shovel s3) 7.784843390871946)

        (= (value_hoe h0) 18.24869307438821)
		(= (value_hoe h1) 17.864275787249866)

        (= (trees_in_map) 37)

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

