;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_90)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.525001954784075)

        (= (sled_supplies s0) 0.4293343408442848)

        (= (factor_value f0) 0.9950958174974136)
		(= (factor_value f1) 0.5749120317280857)

        (= (dummy_1_value d1_0) 0.7896118140824728)
		(= (dummy_1_value d1_1) 0.5802092760494578)
		(= (dummy_1_value d1_2) 0.9402200642222907)
		(= (dummy_1_value d1_3) 0.9323667749529343)
		(= (dummy_1_value d1_4) 0.9557776574927107)

        (= (dummy_2_value d2_0) 7.913481511996803)
		(= (dummy_2_value d2_1) 4.489050706804395)
		(= (dummy_2_value d2_2) 6.685652947127175)
		(= (dummy_2_value d2_3) 1.5284666099504047)

        (= (dummy_3_value d3_0) 11.500814811542652)
		(= (dummy_3_value d3_1) 55.96697833251175)
		(= (dummy_3_value d3_2) 74.35243737157083)
		(= (dummy_3_value d3_3) 30.105787398537238)
		(= (dummy_3_value d3_4) 2.3234918539631084)

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

