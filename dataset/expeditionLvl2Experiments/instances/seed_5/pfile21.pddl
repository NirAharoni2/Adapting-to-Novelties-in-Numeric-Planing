;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_21)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.722099760527591)

        (= (sled_supplies s0) 3.951406871629129)

        (= (factor_value f0) 0.5922381075771039)
		(= (factor_value f1) 0.680730019819525)
		(= (factor_value f2) 0.533439333484872)
		(= (factor_value f3) 0.9968100216907576)
		(= (factor_value f4) 0.7340189969664559)

        (= (dummy_1_value d1_0) 0.8879209840317561)
		(= (dummy_1_value d1_1) 0.5878227415389805)

        (= (dummy_2_value d2_0) 2.878920268001676)

        (= (dummy_3_value d3_0) 5.348187714379195)
		(= (dummy_3_value d3_1) 61.25939947839191)
		(= (dummy_3_value d3_2) 72.9158034962992)
		(= (dummy_3_value d3_3) 27.80041455195095)
		(= (dummy_3_value d3_4) 46.72951657344265)

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

