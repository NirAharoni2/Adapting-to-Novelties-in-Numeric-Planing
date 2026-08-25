;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_14)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.9595995653944888)
		(= (value_axe a1) 0.14146648942472095)

        (= (value_pickaxe p0) 0.3749125023852474)
		(= (value_pickaxe p1) 0.48420155440497203)
		(= (value_pickaxe p2) 0.8657934179720248)
		(= (value_pickaxe p3) 0.7195468243561449)
		(= (value_pickaxe p4) 0.7279135346736757)

        (= (value_shovel s0) 3.9327617550222347)
		(= (value_shovel s1) 4.44485087582498)
		(= (value_shovel s2) 5.761565052549136)
		(= (value_shovel s3) 3.7627027528091634)

        (= (value_hoe h0) 13.127990437863687)
		(= (value_hoe h1) 21.931113341362078)
		(= (value_hoe h2) 20.97122198755351)
		(= (value_hoe h3) 23.91237060414854)

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

