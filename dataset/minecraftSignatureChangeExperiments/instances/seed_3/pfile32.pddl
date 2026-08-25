;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_32)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.023369323197046654)
		(= (value_axe a1) 0.45758157042487524)
		(= (value_axe a2) 0.6912879601229566)
		(= (value_axe a3) 0.4383723525746841)
		(= (value_axe a4) 0.4553759835616594)

        (= (value_pickaxe p0) 0.03724013060101872)
		(= (value_pickaxe p1) 0.2566281658927557)
		(= (value_pickaxe p2) 0.8487880034072189)

        (= (value_shovel s0) 4.13421770710735)
		(= (value_shovel s1) 3.5307027189084828)
		(= (value_shovel s2) 3.812664624802238)
		(= (value_shovel s3) 7.788087397954641)
		(= (value_shovel s4) 6.629355165831487)

        (= (value_hoe h0) 15.173466918346323)
		(= (value_hoe h1) 17.392601392191224)
		(= (value_hoe h2) 27.10808939635571)
		(= (value_hoe h3) 20.676429896846344)

        (= (trees_in_map) 25)

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

