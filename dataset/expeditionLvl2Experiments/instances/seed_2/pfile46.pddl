;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_46)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.707296560944126)

        (= (sled_supplies s0) 7.365092647457469)

        (= (factor_value f0) 0.7403141284833701)

        (= (dummy_1_value d1_0) 0.6474632408360529)
		(= (dummy_1_value d1_1) 0.5318514737878729)
		(= (dummy_1_value d1_2) 0.8126826589946072)
		(= (dummy_1_value d1_3) 0.9808991355414418)
		(= (dummy_1_value d1_4) 0.5574341193098779)

        (= (dummy_2_value d2_0) 8.387754207923727)

        (= (dummy_3_value d3_0) 89.87571712680251)
		(= (dummy_3_value d3_1) 35.87282981067869)

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

