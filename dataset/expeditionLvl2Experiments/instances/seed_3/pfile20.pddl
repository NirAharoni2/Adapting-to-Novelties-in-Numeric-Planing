;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_20)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.548756048902387)

        (= (sled_supplies s0) 7.696822562284729)

        (= (factor_value f0) 0.9543810011853588)

        (= (dummy_1_value d1_0) 0.5484528263199646)
		(= (dummy_1_value d1_1) 0.9706437725599946)
		(= (dummy_1_value d1_2) 0.6871117043436629)

        (= (dummy_2_value d2_0) 7.9517732211641725)

        (= (dummy_3_value d3_0) 75.97500947557957)
		(= (dummy_3_value d3_1) 30.257868682051235)
		(= (dummy_3_value d3_2) 67.91283228491767)
		(= (dummy_3_value d3_3) 65.75375876931665)

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

