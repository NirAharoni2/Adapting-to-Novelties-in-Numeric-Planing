;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_74)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.4446773719844782)
		(= (value_axe a1) 0.8536002249174687)
		(= (value_axe a2) 0.4875274794941079)
		(= (value_axe a3) 0.5555754480143039)
		(= (value_axe a4) 0.5018000002929451)

        (= (value_pickaxe p0) 0.23490879850110824)
		(= (value_pickaxe p1) 0.676297226872801)
		(= (value_pickaxe p2) 0.3240327534046088)
		(= (value_pickaxe p3) 0.20326266086746658)

        (= (value_shovel s0) 7.5727820364143845)
		(= (value_shovel s1) 5.965160048104877)
		(= (value_shovel s2) 6.381930704841908)
		(= (value_shovel s3) 5.901250741347026)

        (= (value_hoe h0) 29.021080333736084)
		(= (value_hoe h1) 26.03797524088367)

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

