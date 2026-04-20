;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_37)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.6377148404235017)
		(= (value_axe a1) 0.049317055270828414)
		(= (value_axe a2) 0.11826597102487268)
		(= (value_axe a3) 0.36492083790190244)

        (= (value_pickaxe p0) 0.9291338828532737)
		(= (value_pickaxe p1) 0.46896341785064954)
		(= (value_pickaxe p2) 0.8220977203671981)
		(= (value_pickaxe p3) 0.646814400902411)

        (= (trees_in_map) 33)

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

