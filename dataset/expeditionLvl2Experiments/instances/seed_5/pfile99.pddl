;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_99)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.050226489585295)

        (= (sled_supplies s0) 3.1877002242243413)

        (= (factor_value f0) 0.6564466212900182)

        (= (dummy_1_value d1_0) 0.5697427089323464)
		(= (dummy_1_value d1_1) 0.9876836314635573)
		(= (dummy_1_value d1_2) 0.6679996044046438)
		(= (dummy_1_value d1_3) 0.8878688634937325)

        (= (dummy_2_value d2_0) 4.035502001175411)
		(= (dummy_2_value d2_1) 4.561167826212893)

        (= (dummy_3_value d3_0) 25.4467771216095)
		(= (dummy_3_value d3_1) 57.183354640362765)
		(= (dummy_3_value d3_2) 94.69427470300751)
		(= (dummy_3_value d3_3) 98.83703430055816)

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

