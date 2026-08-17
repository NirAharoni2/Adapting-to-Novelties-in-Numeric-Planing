;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_53)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.680371940436693)

        (= (sled_supplies s0) 8.633119738366556)

        (= (factor_value f0) 0.6025115983808258)
		(= (factor_value f1) 0.6179379209183482)
		(= (factor_value f2) 0.5334704024471772)
		(= (factor_value f3) 0.9655050356081993)

        (= (dummy_1_value d1_0) 0.6865815201210419)

        (= (dummy_2_value d2_0) 6.239687351567531)
		(= (dummy_2_value d2_1) 3.007066075636563)
		(= (dummy_2_value d2_2) 1.8441662367816998)
		(= (dummy_2_value d2_3) 6.018177877148749)

        (= (dummy_3_value d3_0) 55.55018579963116)
		(= (dummy_3_value d3_1) 80.6793873608762)
		(= (dummy_3_value d3_2) 78.67374797856822)
		(= (dummy_3_value d3_3) 72.93322806129909)

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

