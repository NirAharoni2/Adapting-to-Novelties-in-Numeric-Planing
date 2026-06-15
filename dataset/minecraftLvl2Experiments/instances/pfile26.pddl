;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_26)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.886820077642945)
		(= (value_axe a1) 0.17099562976129867)
		(= (value_axe a2) 0.30252170437745385)
		(= (value_axe a3) 0.7210301722540299)
		(= (value_axe a4) 0.34002896919849757)

        (= (value_pickaxe p0) 0.38116177653022043)
		(= (value_pickaxe p1) 0.7578740706818277)
		(= (value_pickaxe p2) 0.620289089629367)

        (= (value_shovel s0) 1.8469223755624173)
		(= (value_shovel s1) 1.0620444209063578)
		(= (value_shovel s2) 3.984167834974877)
		(= (value_shovel s3) 3.8777197892325064)

        (= (value_hoe h0) 22.956528124479455)
		(= (value_hoe h1) 10.859301623453653)
		(= (value_hoe h2) 16.247235561034906)

        (= (trees_in_map) 39)

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

