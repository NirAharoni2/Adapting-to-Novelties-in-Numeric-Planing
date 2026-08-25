;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_20)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.7520523458658146)
		(= (value_axe a1) 0.14655519713176268)
		(= (value_axe a2) 0.5156182819220984)
		(= (value_axe a3) 0.9347891899370042)
		(= (value_axe a4) 0.8514909721250266)

        (= (value_pickaxe p0) 0.5380344536410685)
		(= (value_pickaxe p1) 0.779535228728232)
		(= (value_pickaxe p2) 0.6713850252727663)

        (= (value_shovel s0) 6.987058936747944)
		(= (value_shovel s1) 5.1665752453764995)
		(= (value_shovel s2) 5.092017606590227)

        (= (value_hoe h0) 29.675082306142674)
		(= (value_hoe h1) 27.7881826784618)
		(= (value_hoe h2) 16.14454642282795)
		(= (value_hoe h3) 15.361872684879543)

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

