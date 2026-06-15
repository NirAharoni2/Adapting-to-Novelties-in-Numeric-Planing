;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_73)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.20607677403887792)
		(= (value_axe a1) 0.9276084830210524)
		(= (value_axe a2) 0.4210531366773348)
		(= (value_axe a3) 0.8077057225684602)
		(= (value_axe a4) 0.055105444130074566)

        (= (value_pickaxe p0) 0.19428588449833617)
		(= (value_pickaxe p1) 0.5151713880624161)
		(= (value_pickaxe p2) 0.3689832857408547)

        (= (value_shovel s0) 5.288274135738275)
		(= (value_shovel s1) 1.488997761194542)
		(= (value_shovel s2) 4.703495712415128)
		(= (value_shovel s3) 2.8079476297630896)
		(= (value_shovel s4) 3.1209391003523437)

        (= (value_hoe h0) 19.103068051881802)
		(= (value_hoe h1) 29.251331917739165)
		(= (value_hoe h2) 28.53844126328405)
		(= (value_hoe h3) 25.957328773301928)

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

