;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_56)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.49794391709337993)
		(= (value_axe a1) 0.9854695119579819)

        (= (value_pickaxe p0) 0.5431596685413244)
		(= (value_pickaxe p1) 0.6253252718420309)
		(= (value_pickaxe p2) 0.2950178907356167)
		(= (value_pickaxe p3) 0.5311180841951729)
		(= (value_pickaxe p4) 0.05146829863037683)

        (= (value_shovel s0) 7.953762963378831)
		(= (value_shovel s1) 7.271817740070041)
		(= (value_shovel s2) 4.871004177958495)
		(= (value_shovel s3) 4.739192874564528)
		(= (value_shovel s4) 2.3357126713633543)

        (= (value_hoe h0) 23.803321719062087)
		(= (value_hoe h1) 26.218906358822657)
		(= (value_hoe h2) 20.191091519045955)
		(= (value_hoe h3) 14.161299581254617)

        (= (trees_in_map) 21)

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

