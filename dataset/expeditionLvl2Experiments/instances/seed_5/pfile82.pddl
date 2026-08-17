;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_82)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.885026145234002)

        (= (sled_supplies s0) 7.781240662319033)

        (= (factor_value f0) 0.7809719062437344)
		(= (factor_value f1) 0.8278603823353123)
		(= (factor_value f2) 0.6310473411711897)

        (= (dummy_1_value d1_0) 0.5379364855496727)
		(= (dummy_1_value d1_1) 0.5545784349869192)
		(= (dummy_1_value d1_2) 0.7910499911909048)

        (= (dummy_2_value d2_0) 6.388497387375039)
		(= (dummy_2_value d2_1) 9.801686427138605)
		(= (dummy_2_value d2_2) 6.588560253088311)

        (= (dummy_3_value d3_0) 85.44792376170511)

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

