;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_15)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.9977480213736307)
		(= (value_axe a1) 0.14650104795623142)

        (= (value_pickaxe p0) 0.4167680434748887)
		(= (value_pickaxe p1) 0.06683939545281614)

        (= (value_shovel s0) 1.6030454961922953)
		(= (value_shovel s1) 7.268502464663112)
		(= (value_shovel s2) 7.9204592009534975)
		(= (value_shovel s3) 5.536574544481953)

        (= (value_hoe h0) 12.570300098346866)
		(= (value_hoe h1) 15.927650390653916)
		(= (value_hoe h2) 14.633992866933816)

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

