;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_7)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 10.176630233184824)

        (= (sled_supplies s0) 2.2542251357136585)

        (= (factor_value f0) 0.9799466586121455)
		(= (factor_value f1) 0.722834258171192)
		(= (factor_value f2) 0.7531546565822356)
		(= (factor_value f3) 0.7133325135137967)

        (= (dummy_1_value d1_0) 0.9161224522463968)

        (= (dummy_2_value d2_0) 9.792785404476154)
		(= (dummy_2_value d2_1) 6.676946529599261)

        (= (dummy_3_value d3_0) 69.81003826963418)

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

