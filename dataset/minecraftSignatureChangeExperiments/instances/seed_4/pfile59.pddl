;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_59)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.8750382012015091)
		(= (value_axe a1) 0.6780054169337373)
		(= (value_axe a2) 0.07039214999045962)
		(= (value_axe a3) 0.6865399890995127)
		(= (value_axe a4) 0.5989134583565138)

        (= (value_pickaxe p0) 0.7294665788078879)
		(= (value_pickaxe p1) 0.5236909739547038)
		(= (value_pickaxe p2) 0.19141527485652265)

        (= (value_shovel s0) 7.9769870538988705)
		(= (value_shovel s1) 5.949276833577298)
		(= (value_shovel s2) 4.7313954782264664)
		(= (value_shovel s3) 6.541697961861971)

        (= (value_hoe h0) 15.223019351389338)
		(= (value_hoe h1) 19.36952959844049)
		(= (value_hoe h2) 20.478174140243823)
		(= (value_hoe h3) 11.229706902230543)

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

