;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_4)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.1436404934952591)
		(= (value_axe a1) 0.67261673349974)
		(= (value_axe a2) 0.6712321121619181)

        (= (value_pickaxe p0) 0.286578947251822)
		(= (value_pickaxe p1) 0.6988844078212876)
		(= (value_pickaxe p2) 0.19227117284304174)
		(= (value_pickaxe p3) 0.07534036731580884)
		(= (value_pickaxe p4) 0.0447381836236842)

        (= (value_shovel s0) 3.5315312754867962)
		(= (value_shovel s1) 6.130710823995455)

        (= (value_hoe h0) 22.911599185682565)
		(= (value_hoe h1) 11.228426078562752)
		(= (value_hoe h2) 14.202441234539808)

        (= (trees_in_map) 25)

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

