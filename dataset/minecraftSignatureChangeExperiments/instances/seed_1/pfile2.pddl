;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_2)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.0254458609934608)
		(= (value_axe a1) 0.5414124727934966)

        (= (value_pickaxe p0) 0.9391491627785106)
		(= (value_pickaxe p1) 0.38120423768821243)
		(= (value_pickaxe p2) 0.21659939713061338)
		(= (value_pickaxe p3) 0.4221165755827173)

        (= (value_shovel s0) 1.2032855130240756)
		(= (value_shovel s1) 2.5518416639112456)

        (= (value_hoe h0) 18.757751873011443)
		(= (value_hoe h1) 19.916244827637012)

        (= (trees_in_map) 27)

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

