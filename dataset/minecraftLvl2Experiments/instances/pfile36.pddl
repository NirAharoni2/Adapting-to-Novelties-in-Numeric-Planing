;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_36)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.5807710849213507)
		(= (value_axe a1) 0.6951834647633143)
		(= (value_axe a2) 0.3956044422460905)
		(= (value_axe a3) 0.5597551370325332)
		(= (value_axe a4) 0.712993051788019)

        (= (value_pickaxe p0) 0.5512102002395508)
		(= (value_pickaxe p1) 0.9647505691381615)
		(= (value_pickaxe p2) 0.35841571117093085)

        (= (value_shovel s0) 5.127073278617092)
		(= (value_shovel s1) 7.706941920155901)
		(= (value_shovel s2) 7.264310007250007)
		(= (value_shovel s3) 5.893787894058692)
		(= (value_shovel s4) 7.7313943611917635)

        (= (value_hoe h0) 18.799615380118407)
		(= (value_hoe h1) 25.383757796379612)

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

