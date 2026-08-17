;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_78)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.491213876125425)

        (= (sled_supplies s0) 5.5389721918189325)

        (= (factor_value f0) 0.6335190624779825)
		(= (factor_value f1) 0.7060282336030863)
		(= (factor_value f2) 0.973615554049502)

        (= (dummy_1_value d1_0) 0.7983695685137442)
		(= (dummy_1_value d1_1) 0.8759355385330613)
		(= (dummy_1_value d1_2) 0.9663311351729158)

        (= (dummy_2_value d2_0) 1.278556012188706)
		(= (dummy_2_value d2_1) 8.92382988632742)

        (= (dummy_3_value d3_0) 10.419568202803031)
		(= (dummy_3_value d3_1) 20.43099069628629)

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

