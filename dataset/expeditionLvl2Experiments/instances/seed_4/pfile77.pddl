;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_77)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.742686794921013)

        (= (sled_supplies s0) 2.83988590892128)

        (= (factor_value f0) 0.7704726506799671)
		(= (factor_value f1) 0.5222647196774514)

        (= (dummy_1_value d1_0) 0.7648528155264284)
		(= (dummy_1_value d1_1) 0.9387882286939678)
		(= (dummy_1_value d1_2) 0.9048334648505683)
		(= (dummy_1_value d1_3) 0.531164533732501)

        (= (dummy_2_value d2_0) 7.905276953994207)
		(= (dummy_2_value d2_1) 6.039313798047752)
		(= (dummy_2_value d2_2) 3.6692464578551602)

        (= (dummy_3_value d3_0) 10.879041727205554)
		(= (dummy_3_value d3_1) 45.783903343299606)

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

