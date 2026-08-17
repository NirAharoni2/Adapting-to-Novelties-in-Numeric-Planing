;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_50)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.30319953546651446)
		(= (value_axe a1) 0.8301951094815732)
		(= (value_axe a2) 0.5681256100390577)

        (= (value_pickaxe p0) 0.7262021488381087)
		(= (value_pickaxe p1) 0.4653795269331018)
		(= (value_pickaxe p2) 0.2793880409440953)
		(= (value_pickaxe p3) 0.5036939323959332)

        (= (value_shovel s0) 5.0122563508810725)
		(= (value_shovel s1) 2.692188542573186)
		(= (value_shovel s2) 6.917990994471477)

        (= (value_hoe h0) 29.623015791374424)
		(= (value_hoe h1) 13.624134495068098)
		(= (value_hoe h2) 14.843275031316303)
		(= (value_hoe h3) 26.227335579518613)

        (= (trees_in_map) 39)

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

