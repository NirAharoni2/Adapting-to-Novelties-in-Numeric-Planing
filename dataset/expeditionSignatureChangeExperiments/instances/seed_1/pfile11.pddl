;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_11)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 12.853907627995117)

        (= (sled_supplies s0) 4.425300351898305)

        (= (factor_value f0) 0.6118570363743846)
		(= (factor_value f1) 0.5408716311761969)
		(= (factor_value f2) 0.6333618214908682)

        (= (dummy_1_value d1_0) 0.9453840639276527)

        (= (dummy_2_value d2_0) 6.080021499161776)
		(= (dummy_2_value d2_1) 9.32560481897626)
		(= (dummy_2_value d2_2) 5.119923331371208)
		(= (dummy_2_value d2_3) 3.494644894969285)
		(= (dummy_2_value d2_4) 8.08313197204296)

        (= (dummy_3_value d3_0) 82.94904750792723)
		(= (dummy_3_value d3_1) 2.225792704179996)
		(= (dummy_3_value d3_2) 67.37075226336917)
		(= (dummy_3_value d3_3) 10.07662913903526)
		(= (dummy_3_value d3_4) 12.395147344364803)

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

