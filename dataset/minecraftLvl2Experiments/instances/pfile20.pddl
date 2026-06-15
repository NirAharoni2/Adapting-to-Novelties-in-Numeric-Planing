;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_20)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.8152449998346948)
		(= (value_axe a1) 0.7459814631499604)

        (= (value_pickaxe p0) 0.8757587386446608)
		(= (value_pickaxe p1) 0.08771547906737287)
		(= (value_pickaxe p2) 0.02400540179301358)
		(= (value_pickaxe p3) 0.8092494627453148)

        (= (value_shovel s0) 5.33243037065287)
		(= (value_shovel s1) 1.8568953053813972)

        (= (value_hoe h0) 13.946970795012595)
		(= (value_hoe h1) 27.976366669773153)
		(= (value_hoe h2) 17.9166024059542)
		(= (value_hoe h3) 28.619048708506433)

        (= (trees_in_map) 35)

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

