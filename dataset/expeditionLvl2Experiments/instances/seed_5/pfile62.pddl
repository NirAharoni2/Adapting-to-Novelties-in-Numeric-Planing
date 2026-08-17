;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_62)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.47760026045536)

        (= (sled_supplies s0) 8.452146770531638)

        (= (factor_value f0) 0.9237549678932211)
		(= (factor_value f1) 0.5886950059439444)
		(= (factor_value f2) 0.7372530996677997)

        (= (dummy_1_value d1_0) 0.6597796970958614)
		(= (dummy_1_value d1_1) 0.8124966885466577)

        (= (dummy_2_value d2_0) 2.0015994380350803)
		(= (dummy_2_value d2_1) 8.967383812817467)
		(= (dummy_2_value d2_2) 4.334405767054274)

        (= (dummy_3_value d3_0) 78.59174126133166)
		(= (dummy_3_value d3_1) 94.33910499613759)
		(= (dummy_3_value d3_2) 94.08138825309574)
		(= (dummy_3_value d3_3) 39.629915757432954)
		(= (dummy_3_value d3_4) 85.83178729926807)

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

