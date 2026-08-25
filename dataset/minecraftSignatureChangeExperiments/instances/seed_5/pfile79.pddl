;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_79)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.3387320290268442)
		(= (value_axe a1) 0.6117822181257189)

        (= (value_pickaxe p0) 0.1623260888979664)
		(= (value_pickaxe p1) 0.9341573716151204)

        (= (value_shovel s0) 1.3179957521948737)
		(= (value_shovel s1) 4.496656874056568)
		(= (value_shovel s2) 2.9134746441831765)
		(= (value_shovel s3) 4.682403634743531)

        (= (value_hoe h0) 10.912096488659218)
		(= (value_hoe h1) 14.484497158607999)

        (= (trees_in_map) 30)

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

