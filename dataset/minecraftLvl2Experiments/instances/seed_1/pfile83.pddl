;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_83)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.8986851614114433)
		(= (value_axe a1) 0.039867654511166806)
		(= (value_axe a2) 0.23008952114516357)
		(= (value_axe a3) 0.8873690596569641)
		(= (value_axe a4) 0.5243035839280958)

        (= (value_pickaxe p0) 0.1733155849211242)
		(= (value_pickaxe p1) 0.9458506072175332)

        (= (value_shovel s0) 2.40176424731358)
		(= (value_shovel s1) 4.100928642014775)
		(= (value_shovel s2) 2.701143245647779)

        (= (value_hoe h0) 20.11787107160359)
		(= (value_hoe h1) 16.497982947823413)
		(= (value_hoe h2) 28.888969220732225)
		(= (value_hoe h3) 11.469569086319414)

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

