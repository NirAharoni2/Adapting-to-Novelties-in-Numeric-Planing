;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_4)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.8766961761410571)
		(= (value_axe a1) 0.6163460781286471)
		(= (value_axe a2) 0.7729840570045846)
		(= (value_axe a3) 0.47976614765497383)
		(= (value_axe a4) 0.3032967445057757)

        (= (value_pickaxe p0) 0.7992588781282738)
		(= (value_pickaxe p1) 0.8310678415317)
		(= (value_pickaxe p2) 0.5621887036990206)

        (= (value_shovel s0) 4.551496852635598)
		(= (value_shovel s1) 5.310657509532667)
		(= (value_shovel s2) 3.8466936959543094)
		(= (value_shovel s3) 6.116509128024647)

        (= (value_hoe h0) 19.778129087670393)
		(= (value_hoe h1) 17.331964959823242)
		(= (value_hoe h2) 23.684636447320145)

        (= (trees_in_map) 22)

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

