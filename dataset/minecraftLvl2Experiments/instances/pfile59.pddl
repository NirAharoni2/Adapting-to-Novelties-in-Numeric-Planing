;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_59)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.17668831865315937)
		(= (value_axe a1) 0.4622394564316017)
		(= (value_axe a2) 0.6427745846386042)

        (= (value_pickaxe p0) 0.8660732501865197)
		(= (value_pickaxe p1) 0.20584718156814896)
		(= (value_pickaxe p2) 0.9494779706088046)
		(= (value_pickaxe p3) 0.13391323846978287)
		(= (value_pickaxe p4) 0.2742236122633167)

        (= (value_shovel s0) 6.816290810974719)
		(= (value_shovel s1) 7.092227144038796)

        (= (value_hoe h0) 26.67497500288826)
		(= (value_hoe h1) 14.177844846815619)

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

