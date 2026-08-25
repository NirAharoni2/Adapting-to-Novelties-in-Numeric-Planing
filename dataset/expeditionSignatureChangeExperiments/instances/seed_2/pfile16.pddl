;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_16)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 14.020946979966979)

        (= (sled_supplies s0) 3.3740117744449365)

        (= (factor_value f0) 0.5689365640598696)
		(= (factor_value f1) 0.806161853219181)
		(= (factor_value f2) 0.7171989920811959)
		(= (factor_value f3) 0.6268455554300592)
		(= (factor_value f4) 0.7830473116545633)

        (= (dummy_1_value d1_0) 0.7335434396293526)
		(= (dummy_1_value d1_1) 0.6024987473055192)

        (= (dummy_2_value d2_0) 9.701027086685858)
		(= (dummy_2_value d2_1) 1.6554283064018076)
		(= (dummy_2_value d2_2) 1.0273355927399974)

        (= (dummy_3_value d3_0) 49.05688980060409)
		(= (dummy_3_value d3_1) 83.88195823311594)
		(= (dummy_3_value d3_2) 66.18180428057181)
		(= (dummy_3_value d3_3) 75.71228928539597)
		(= (dummy_3_value d3_4) 49.015044879678925)

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

