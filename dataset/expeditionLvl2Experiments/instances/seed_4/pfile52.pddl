;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_52)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.533281189429122)

        (= (sled_supplies s0) 7.029541601174836)

        (= (factor_value f0) 0.5649002065765395)
		(= (factor_value f1) 0.5150555942564554)
		(= (factor_value f2) 0.5795683522648505)
		(= (factor_value f3) 0.7716067202256072)
		(= (factor_value f4) 0.6201173759975148)

        (= (dummy_1_value d1_0) 0.8973160771112366)
		(= (dummy_1_value d1_1) 0.5774330329310273)

        (= (dummy_2_value d2_0) 6.966072462847062)
		(= (dummy_2_value d2_1) 9.100974923633157)

        (= (dummy_3_value d3_0) 69.59928309478352)
		(= (dummy_3_value d3_1) 92.35669130059479)

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

