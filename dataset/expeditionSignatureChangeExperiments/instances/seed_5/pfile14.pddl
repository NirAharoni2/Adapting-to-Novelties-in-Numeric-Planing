;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_14)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 13.473107434026812)

        (= (sled_supplies s0) 2.929261197947197)

        (= (factor_value f0) 0.7164100504745268)
		(= (factor_value f1) 0.643180540384332)

        (= (dummy_1_value d1_0) 0.8903645778911176)
		(= (dummy_1_value d1_1) 0.9553378086945066)
		(= (dummy_1_value d1_2) 0.5713420888984553)

        (= (dummy_2_value d2_0) 5.305713499017767)
		(= (dummy_2_value d2_1) 5.941858053194062)
		(= (dummy_2_value d2_2) 5.4791373070798555)
		(= (dummy_2_value d2_3) 3.9766330558173575)

        (= (dummy_3_value d3_0) 16.19924698122228)

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

