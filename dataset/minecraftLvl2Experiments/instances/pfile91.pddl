;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_91)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.01648088086028976)
		(= (value_axe a1) 0.9832003077429464)
		(= (value_axe a2) 0.01809805555006616)
		(= (value_axe a3) 0.3418047545153121)

        (= (value_pickaxe p0) 0.7870508021156217)
		(= (value_pickaxe p1) 0.9435278190896621)
		(= (value_pickaxe p2) 0.6288740915322478)

        (= (value_shovel s0) 4.932208500180755)
		(= (value_shovel s1) 2.1687165400611828)
		(= (value_shovel s2) 5.212302941123055)
		(= (value_shovel s3) 3.360817991424546)

        (= (value_hoe h0) 27.011640764943497)
		(= (value_hoe h1) 22.907747476440612)
		(= (value_hoe h2) 11.88898495938374)

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

