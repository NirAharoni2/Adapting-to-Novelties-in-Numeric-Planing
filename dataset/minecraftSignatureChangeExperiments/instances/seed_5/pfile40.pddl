;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_40)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.29385707755073753)
		(= (value_axe a1) 0.7973991503392377)
		(= (value_axe a2) 0.797173333333238)
		(= (value_axe a3) 0.07793726695523251)

        (= (value_pickaxe p0) 0.9504880694107848)
		(= (value_pickaxe p1) 0.07667436922198145)
		(= (value_pickaxe p2) 0.41303679173058105)

        (= (value_shovel s0) 2.2980613155107283)
		(= (value_shovel s1) 5.591110642543596)

        (= (value_hoe h0) 21.398409987374038)
		(= (value_hoe h1) 22.529376421909028)
		(= (value_hoe h2) 22.798617613104692)

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

