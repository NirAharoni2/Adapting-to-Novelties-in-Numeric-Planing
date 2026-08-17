;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_12)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.17182159053673707)
		(= (value_axe a1) 0.29988806872849316)

        (= (value_pickaxe p0) 0.6628961043048281)
		(= (value_pickaxe p1) 0.5249641354158249)

        (= (value_shovel s0) 3.8962531341070408)
		(= (value_shovel s1) 7.573297242757628)
		(= (value_shovel s2) 5.285147367381388)
		(= (value_shovel s3) 3.389468601925966)
		(= (value_shovel s4) 2.7673239097292175)

        (= (value_hoe h0) 27.233294329193342)
		(= (value_hoe h1) 19.543949933581263)

        (= (trees_in_map) 21)

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

