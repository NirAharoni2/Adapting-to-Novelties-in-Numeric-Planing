;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_72)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.6100097565684293)
		(= (value_axe a1) 0.923352100843882)
		(= (value_axe a2) 0.2434495372870018)

        (= (value_pickaxe p0) 0.8990863748810365)
		(= (value_pickaxe p1) 0.8016598694746413)
		(= (value_pickaxe p2) 0.5778279255223944)
		(= (value_pickaxe p3) 0.8582285254787992)

        (= (value_shovel s0) 7.744661131713482)
		(= (value_shovel s1) 5.573301640279098)
		(= (value_shovel s2) 6.934707954172575)
		(= (value_shovel s3) 5.504996232313685)
		(= (value_shovel s4) 1.8599207762610195)

        (= (value_hoe h0) 13.125073110730046)
		(= (value_hoe h1) 12.57378288810289)

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

