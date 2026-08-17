;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_63)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.017955502175546)

        (= (sled_supplies s0) 6.097064963645453)

        (= (factor_value f0) 0.940084173589298)

        (= (dummy_1_value d1_0) 0.9130644603271879)
		(= (dummy_1_value d1_1) 0.5824216525284065)
		(= (dummy_1_value d1_2) 0.8451944412410892)
		(= (dummy_1_value d1_3) 0.9345721122561641)

        (= (dummy_2_value d2_0) 7.7682837490755805)
		(= (dummy_2_value d2_1) 3.488328991977709)
		(= (dummy_2_value d2_2) 7.300371856627853)

        (= (dummy_3_value d3_0) 39.59583126850615)
		(= (dummy_3_value d3_1) 43.82977468997713)
		(= (dummy_3_value d3_2) 73.34954107675888)

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

