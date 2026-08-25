;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_93)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.9873506349586143)
		(= (value_axe a1) 0.5543033992196249)
		(= (value_axe a2) 0.3046580871793173)
		(= (value_axe a3) 0.0826858016621671)
		(= (value_axe a4) 0.4267060753965224)

        (= (value_pickaxe p0) 0.5206022263119511)
		(= (value_pickaxe p1) 0.45343828558878474)
		(= (value_pickaxe p2) 0.3104431535190789)

        (= (value_shovel s0) 7.634406372453326)
		(= (value_shovel s1) 4.327244830813952)
		(= (value_shovel s2) 3.1536604362995657)

        (= (value_hoe h0) 25.551460694454143)
		(= (value_hoe h1) 14.88595887897121)
		(= (value_hoe h2) 18.455651269819704)
		(= (value_hoe h3) 12.0817528043795)

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

