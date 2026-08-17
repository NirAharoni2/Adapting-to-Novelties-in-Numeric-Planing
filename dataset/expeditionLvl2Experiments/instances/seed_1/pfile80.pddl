;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_80)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.413078825675615)

        (= (sled_supplies s0) 0.8433979099882776)

        (= (factor_value f0) 0.7499785704879405)

        (= (dummy_1_value d1_0) 0.6747516510468536)
		(= (dummy_1_value d1_1) 0.7440957355063628)

        (= (dummy_2_value d2_0) 5.6005644192511435)
		(= (dummy_2_value d2_1) 6.978527536047251)
		(= (dummy_2_value d2_2) 9.399682030860758)

        (= (dummy_3_value d3_0) 67.30428053948006)
		(= (dummy_3_value d3_1) 31.844655580113205)
		(= (dummy_3_value d3_2) 32.45730371139332)
		(= (dummy_3_value d3_3) 78.58705615040671)

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

