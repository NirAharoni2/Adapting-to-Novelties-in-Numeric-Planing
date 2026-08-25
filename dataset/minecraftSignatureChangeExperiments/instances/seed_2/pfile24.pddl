;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_24)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.3674342729790927)
		(= (value_axe a1) 0.39517778518795865)
		(= (value_axe a2) 0.17477422399760756)
		(= (value_axe a3) 0.9577122993866662)

        (= (value_pickaxe p0) 0.3540035221035386)
		(= (value_pickaxe p1) 0.4766340113259664)
		(= (value_pickaxe p2) 0.8935650655889159)
		(= (value_pickaxe p3) 0.18645008888005643)
		(= (value_pickaxe p4) 0.960669497989223)

        (= (value_shovel s0) 1.889390139102411)
		(= (value_shovel s1) 1.1962066719672493)
		(= (value_shovel s2) 3.45546002812385)
		(= (value_shovel s3) 3.5142235721592527)

        (= (value_hoe h0) 28.35288642025048)
		(= (value_hoe h1) 27.663885017086727)

        (= (trees_in_map) 40)

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

