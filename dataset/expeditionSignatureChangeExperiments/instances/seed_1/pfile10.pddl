;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_10)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 13.627325931206363)

        (= (sled_supplies s0) 0.1956889929845529)

        (= (factor_value f0) 0.5423401152082421)
		(= (factor_value f1) 0.5848470708971938)
		(= (factor_value f2) 0.9554938917540339)
		(= (factor_value f3) 0.6064840974957121)
		(= (factor_value f4) 0.8795580913582202)

        (= (dummy_1_value d1_0) 0.8001044150661247)
		(= (dummy_1_value d1_1) 0.9205660978529275)
		(= (dummy_1_value d1_2) 0.6840539997028245)

        (= (dummy_2_value d2_0) 4.062567115017893)
		(= (dummy_2_value d2_1) 3.620937586700212)
		(= (dummy_2_value d2_2) 8.806778412282124)
		(= (dummy_2_value d2_3) 6.435842760025401)
		(= (dummy_2_value d2_4) 9.588767114549709)

        (= (dummy_3_value d3_0) 88.83924536697931)
		(= (dummy_3_value d3_1) 14.399251762149843)
		(= (dummy_3_value d3_2) 55.56587693285243)
		(= (dummy_3_value d3_3) 11.323224803446745)

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

