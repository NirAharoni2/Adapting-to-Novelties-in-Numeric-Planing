;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_93)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.272116584076821)

        (= (sled_supplies s0) 7.631937065285623)

        (= (factor_value f0) 0.598585858727791)
		(= (factor_value f1) 0.6972512882718207)

        (= (dummy_1_value d1_0) 0.67988447681488)
		(= (dummy_1_value d1_1) 0.9128027972889241)
		(= (dummy_1_value d1_2) 0.7433111836441684)

        (= (dummy_2_value d2_0) 5.7076378304375615)
		(= (dummy_2_value d2_1) 2.7262108946278407)
		(= (dummy_2_value d2_2) 4.093693603669668)
		(= (dummy_2_value d2_3) 8.175026769697158)

        (= (dummy_3_value d3_0) 9.12969600239493)
		(= (dummy_3_value d3_1) 59.23115921176986)
		(= (dummy_3_value d3_2) 5.498763151136623)
		(= (dummy_3_value d3_3) 88.97952686371721)

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

