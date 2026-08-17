;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_92)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.998816234659671)

        (= (sled_supplies s0) 1.6688681037348922)

        (= (factor_value f0) 0.998035171085375)

        (= (dummy_1_value d1_0) 0.9753823311294859)
		(= (dummy_1_value d1_1) 0.5217823084684803)
		(= (dummy_1_value d1_2) 0.5364180481527216)
		(= (dummy_1_value d1_3) 0.6695683614481782)
		(= (dummy_1_value d1_4) 0.9133948511218273)

        (= (dummy_2_value d2_0) 6.024283014081173)
		(= (dummy_2_value d2_1) 3.3110269067047122)
		(= (dummy_2_value d2_2) 1.905826506648204)

        (= (dummy_3_value d3_0) 25.756333669473975)
		(= (dummy_3_value d3_1) 13.60232417770257)
		(= (dummy_3_value d3_2) 15.214997241146827)
		(= (dummy_3_value d3_3) 74.74431776058978)
		(= (dummy_3_value d3_4) 20.126828788537285)

        (= (waypoint_supplies w0_0) 1000)
		(= (waypoint_supplies w0_1) 0.0)
		(= (waypoint_supplies w0_2) 0.0)
		(= (waypoint_supplies w0_3) 0.0)
		(= (waypoint_supplies w0_4) 0.0)

		(is_next w0_0 w0_1)
		(is_next w0_1 w0_2)
		(is_next w0_2 w0_3)
		(is_next w0_3 w0_4)
	)
	(:goal
		(and
			(at s0 w0_4)
		)
	)
)

