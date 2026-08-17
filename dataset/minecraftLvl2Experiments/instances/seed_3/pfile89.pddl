;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_89)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.9989846308540288)
		(= (value_axe a1) 0.6768525200650183)
		(= (value_axe a2) 0.8752084199484726)
		(= (value_axe a3) 0.5484865810057558)
		(= (value_axe a4) 0.08067975274457506)

        (= (value_pickaxe p0) 0.8910932970297667)
		(= (value_pickaxe p1) 0.0910630946289519)
		(= (value_pickaxe p2) 0.08576751650548065)
		(= (value_pickaxe p3) 0.8303270124219467)

        (= (value_shovel s0) 2.963927787412908)
		(= (value_shovel s1) 5.63680700458173)
		(= (value_shovel s2) 1.20033397224831)
		(= (value_shovel s3) 2.4755604665416984)
		(= (value_shovel s4) 6.009771310403027)

        (= (value_hoe h0) 10.75311960626729)
		(= (value_hoe h1) 20.21235330242581)

        (= (trees_in_map) 26)

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

