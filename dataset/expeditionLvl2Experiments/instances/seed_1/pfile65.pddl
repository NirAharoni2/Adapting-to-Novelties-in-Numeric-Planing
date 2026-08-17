;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_65)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.737482993991663)

        (= (sled_supplies s0) 4.280995672254997)

        (= (factor_value f0) 0.9515924312078423)
		(= (factor_value f1) 0.6164195132060446)
		(= (factor_value f2) 0.7937208865957166)

        (= (dummy_1_value d1_0) 0.9868901356560132)
		(= (dummy_1_value d1_1) 0.7531202365548927)
		(= (dummy_1_value d1_2) 0.860772450516361)
		(= (dummy_1_value d1_3) 0.7291666872661622)

        (= (dummy_2_value d2_0) 8.032679688167892)
		(= (dummy_2_value d2_1) 4.251758058826993)

        (= (dummy_3_value d3_0) 46.15613317607054)
		(= (dummy_3_value d3_1) 92.77884488133758)
		(= (dummy_3_value d3_2) 61.83509348034983)
		(= (dummy_3_value d3_3) 36.11333213565613)
		(= (dummy_3_value d3_4) 92.63579473884494)

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

