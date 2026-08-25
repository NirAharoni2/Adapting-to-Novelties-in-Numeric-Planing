;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_31)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.9317399640630004)
		(= (value_axe a1) 0.8614599943159422)

        (= (value_pickaxe p0) 0.43702471777075746)
		(= (value_pickaxe p1) 0.7568494246966349)

        (= (value_shovel s0) 4.395012320657601)
		(= (value_shovel s1) 1.7638549842552544)
		(= (value_shovel s2) 1.2989109222541229)
		(= (value_shovel s3) 1.545596174275667)

        (= (value_hoe h0) 14.006055251633482)
		(= (value_hoe h1) 13.216445206328357)
		(= (value_hoe h2) 19.942800771188654)

        (= (trees_in_map) 22)

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

