;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_47)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.34901381481631044)
		(= (value_axe a1) 0.5739519849855556)
		(= (value_axe a2) 0.5772825340310754)

        (= (value_pickaxe p0) 0.7078230288181064)
		(= (value_pickaxe p1) 0.915455728151114)

        (= (value_shovel s0) 3.368487154103515)
		(= (value_shovel s1) 5.444969668202368)
		(= (value_shovel s2) 1.8299624943476955)
		(= (value_shovel s3) 2.7586872640814804)
		(= (value_shovel s4) 1.6727275580382304)

        (= (value_hoe h0) 27.242260274046586)
		(= (value_hoe h1) 16.753154382280194)
		(= (value_hoe h2) 24.211198546979524)
		(= (value_hoe h3) 27.54555996949162)

        (= (trees_in_map) 32)

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

