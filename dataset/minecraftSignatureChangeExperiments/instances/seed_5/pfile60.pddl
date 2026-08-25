;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_60)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.07170956750358448)
		(= (value_axe a1) 0.42171657105445537)
		(= (value_axe a2) 0.9392832336200245)
		(= (value_axe a3) 0.5411444924025169)
		(= (value_axe a4) 0.6515414201308461)

        (= (value_pickaxe p0) 0.6816314571467509)
		(= (value_pickaxe p1) 0.3232952872900329)

        (= (value_shovel s0) 3.5352226691086472)
		(= (value_shovel s1) 1.5304678251061872)
		(= (value_shovel s2) 3.661931758517464)
		(= (value_shovel s3) 2.1911655394804193)
		(= (value_shovel s4) 2.722281633344477)

        (= (value_hoe h0) 22.300959160536653)
		(= (value_hoe h1) 11.901324999884366)
		(= (value_hoe h2) 23.093937484506554)
		(= (value_hoe h3) 23.275611928511424)
		(= (value_hoe h4) 17.611572062593154)

        (= (trees_in_map) 23)

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

