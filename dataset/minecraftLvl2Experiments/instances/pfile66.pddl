;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_66)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.6455061076591951)
		(= (value_axe a1) 0.9830461097321779)
		(= (value_axe a2) 0.47760020684136717)
		(= (value_axe a3) 0.37264606267850786)

        (= (value_pickaxe p0) 0.7783833880606487)
		(= (value_pickaxe p1) 0.026257225971549447)
		(= (value_pickaxe p2) 0.19107665910930471)

        (= (value_shovel s0) 1.1052525249585017)
		(= (value_shovel s1) 6.744980901832459)
		(= (value_shovel s2) 4.941706055312485)
		(= (value_shovel s3) 2.7940132301707825)

        (= (value_hoe h0) 14.59094124583251)
		(= (value_hoe h1) 27.85719565147026)
		(= (value_hoe h2) 18.361920555426554)
		(= (value_hoe h3) 15.14680096904037)

        (= (trees_in_map) 34)

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

