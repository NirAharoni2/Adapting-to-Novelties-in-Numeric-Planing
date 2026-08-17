;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_21)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.164362873472008)

        (= (sled_supplies s0) 4.997208760854796)

        (= (factor_value f0) 0.9043273100819037)
		(= (factor_value f1) 0.9868080547749234)

        (= (dummy_1_value d1_0) 0.7726885019129344)
		(= (dummy_1_value d1_1) 0.7454046399145071)
		(= (dummy_1_value d1_2) 0.9278488498993218)

        (= (dummy_2_value d2_0) 7.921606472734414)
		(= (dummy_2_value d2_1) 6.1349016644833165)
		(= (dummy_2_value d2_2) 4.449307462896374)

        (= (dummy_3_value d3_0) 29.120697127622364)
		(= (dummy_3_value d3_1) 11.705781664682636)
		(= (dummy_3_value d3_2) 80.94735984795476)
		(= (dummy_3_value d3_3) 12.68908152253589)
		(= (dummy_3_value d3_4) 74.9792582341163)

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

