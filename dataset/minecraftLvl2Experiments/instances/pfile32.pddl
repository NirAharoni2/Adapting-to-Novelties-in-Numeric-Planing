;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_32)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.35593644635565336)
		(= (value_axe a1) 0.3550655567066838)
		(= (value_axe a2) 0.9230126287209621)

        (= (value_pickaxe p0) 0.48422318596716674)
		(= (value_pickaxe p1) 0.007523307171427462)
		(= (value_pickaxe p2) 0.5048473654779322)
		(= (value_pickaxe p3) 0.6496070756942723)

        (= (value_shovel s0) 7.212846574812649)
		(= (value_shovel s1) 1.9265806618389716)
		(= (value_shovel s2) 3.453541859698669)

        (= (value_hoe h0) 19.43426081490756)
		(= (value_hoe h1) 25.982820039230084)
		(= (value_hoe h2) 11.032008707231205)
		(= (value_hoe h3) 27.79148399564322)

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

