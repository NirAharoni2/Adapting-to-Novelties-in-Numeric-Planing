;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_20)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.027527816497436852)
		(= (value_axe a1) 0.07980858991655548)
		(= (value_axe a2) 0.7539597403081971)
		(= (value_axe a3) 0.17369963794666654)

        (= (value_pickaxe p0) 0.7502557258197498)
		(= (value_pickaxe p1) 0.7843759804794883)
		(= (value_pickaxe p2) 0.40449094962546883)
		(= (value_pickaxe p3) 0.6749931843961182)
		(= (value_pickaxe p4) 0.7874222906934997)

        (= (value_shovel s0) 7.04816870418895)
		(= (value_shovel s1) 1.944091777343721)
		(= (value_shovel s2) 2.137991014841036)
		(= (value_shovel s3) 3.6716439347421383)

        (= (value_hoe h0) 19.293133866142856)
		(= (value_hoe h1) 15.896377437688127)
		(= (value_hoe h2) 10.208004755177322)
		(= (value_hoe h3) 21.14843345692634)
		(= (value_hoe h4) 29.338275194439277)

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

