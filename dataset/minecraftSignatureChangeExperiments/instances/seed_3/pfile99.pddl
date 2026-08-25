;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_99)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.7272716328072693)
		(= (value_axe a1) 0.19322435357470713)

        (= (value_pickaxe p0) 0.6943482892390112)
		(= (value_pickaxe p1) 0.39827594647356024)
		(= (value_pickaxe p2) 0.8200897217802616)
		(= (value_pickaxe p3) 0.6516830602316709)

        (= (value_shovel s0) 2.5122697030197365)
		(= (value_shovel s1) 2.6334952981281736)
		(= (value_shovel s2) 7.095433005114342)
		(= (value_shovel s3) 2.844435230951017)

        (= (value_hoe h0) 14.931192792770712)
		(= (value_hoe h1) 28.041367493813667)
		(= (value_hoe h2) 12.364744541457991)
		(= (value_hoe h3) 24.906909035318385)

        (= (trees_in_map) 36)

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

