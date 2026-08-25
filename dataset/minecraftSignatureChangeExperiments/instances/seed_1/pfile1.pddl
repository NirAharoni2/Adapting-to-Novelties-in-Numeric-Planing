;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_1)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.49543508709194095)
		(= (value_axe a1) 0.4494910647887381)
		(= (value_axe a2) 0.651592972722763)

        (= (value_pickaxe p0) 0.7887233511355132)
		(= (value_pickaxe p1) 0.0938595867742349)

        (= (value_shovel s0) 1.198432335654044)
		(= (value_shovel s1) 6.850355727439088)
		(= (value_shovel s2) 4.029369475335374)
		(= (value_shovel s3) 6.335960577205594)

        (= (value_hoe h0) 10.042121067022213)
		(= (value_hoe h1) 18.907743881096028)

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

