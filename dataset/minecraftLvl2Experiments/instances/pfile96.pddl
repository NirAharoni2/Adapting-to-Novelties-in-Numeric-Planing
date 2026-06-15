;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_96)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.03233887219816334)
		(= (value_axe a1) 0.12029465770107395)

        (= (value_pickaxe p0) 0.7343116224084338)
		(= (value_pickaxe p1) 0.957652227667666)
		(= (value_pickaxe p2) 0.522598301328036)
		(= (value_pickaxe p3) 0.5684620616186908)

        (= (value_shovel s0) 1.1168587468545272)
		(= (value_shovel s1) 5.215998178701975)
		(= (value_shovel s2) 3.3847080674144423)
		(= (value_shovel s3) 3.9965171291582604)
		(= (value_shovel s4) 3.631901979888408)

        (= (value_hoe h0) 17.51152301305318)
		(= (value_hoe h1) 26.77784324245541)
		(= (value_hoe h2) 21.513133859140595)
		(= (value_hoe h3) 21.745203376681914)

        (= (trees_in_map) 38)

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

