;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_87)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.5924457421307657)
		(= (value_axe a1) 0.522181941493291)
		(= (value_axe a2) 0.19384600740976587)

        (= (value_pickaxe p0) 0.6272801333622258)
		(= (value_pickaxe p1) 0.6440622103865061)

        (= (value_shovel s0) 7.4432447538375195)
		(= (value_shovel s1) 6.140927983483248)
		(= (value_shovel s2) 5.384086913893951)
		(= (value_shovel s3) 7.3903197856269855)

        (= (value_hoe h0) 19.36641035365372)
		(= (value_hoe h1) 18.528081930333812)
		(= (value_hoe h2) 22.3236488683252)
		(= (value_hoe h3) 21.01943593442259)
		(= (value_hoe h4) 12.192007044955446)

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

