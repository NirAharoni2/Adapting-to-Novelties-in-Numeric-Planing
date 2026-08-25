;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_6)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.03182648299140178)
		(= (value_axe a1) 0.7405584945824758)
		(= (value_axe a2) 0.34383290131610267)

        (= (value_pickaxe p0) 0.2502088580702625)
		(= (value_pickaxe p1) 0.6509664388131893)

        (= (value_shovel s0) 2.019403132721413)
		(= (value_shovel s1) 7.853354345355074)

        (= (value_hoe h0) 22.766487454283418)
		(= (value_hoe h1) 26.033288612002757)
		(= (value_hoe h2) 16.68370587206323)
		(= (value_hoe h3) 14.141197820093009)
		(= (value_hoe h4) 29.626009722302022)

        (= (trees_in_map) 38)

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

