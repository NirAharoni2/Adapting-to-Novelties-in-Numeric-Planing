;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_60)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.1557727759655333)
		(= (value_axe a1) 0.9134730441814907)

        (= (value_pickaxe p0) 0.14192653951509626)
		(= (value_pickaxe p1) 0.8791214438292662)
		(= (value_pickaxe p2) 0.21626835677080958)
		(= (value_pickaxe p3) 0.8415897548272803)

        (= (value_shovel s0) 6.937607775417493)
		(= (value_shovel s1) 3.348252978590413)
		(= (value_shovel s2) 7.220146604228036)
		(= (value_shovel s3) 2.1183745495172737)
		(= (value_shovel s4) 6.94376659814872)

        (= (value_hoe h0) 17.6346909751192)
		(= (value_hoe h1) 18.794352025634062)
		(= (value_hoe h2) 12.357195612297193)

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

