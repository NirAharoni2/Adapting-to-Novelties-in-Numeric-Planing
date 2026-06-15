;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_55)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.058474251908849806)
		(= (value_axe a1) 0.7853088405196802)

        (= (value_pickaxe p0) 0.4926662403489792)
		(= (value_pickaxe p1) 0.9917116458089746)

        (= (value_shovel s0) 3.9898783988015674)
		(= (value_shovel s1) 3.8431873791603435)
		(= (value_shovel s2) 1.2044519431724368)

        (= (value_hoe h0) 13.525680691959929)
		(= (value_hoe h1) 11.872848062520138)
		(= (value_hoe h2) 16.06587084467082)
		(= (value_hoe h3) 11.311146605750624)
		(= (value_hoe h4) 18.743479301126435)

        (= (trees_in_map) 23)

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

