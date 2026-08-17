;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_90)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.4707059970856875)

        (= (sled_supplies s0) 5.3063177757605064)

        (= (factor_value f0) 0.5015307159416018)
		(= (factor_value f1) 0.850617330919769)
		(= (factor_value f2) 0.5390404590627949)
		(= (factor_value f3) 0.9980563211857552)

        (= (dummy_1_value d1_0) 0.6369851790671748)
		(= (dummy_1_value d1_1) 0.5151852754486191)
		(= (dummy_1_value d1_2) 0.6350750510846379)
		(= (dummy_1_value d1_3) 0.9478911157901027)
		(= (dummy_1_value d1_4) 0.5461455625498952)

        (= (dummy_2_value d2_0) 8.686046750704254)
		(= (dummy_2_value d2_1) 8.309380987730435)
		(= (dummy_2_value d2_2) 9.123323646793814)
		(= (dummy_2_value d2_3) 8.909941285173343)
		(= (dummy_2_value d2_4) 2.0018910632126796)

        (= (dummy_3_value d3_0) 10.13003246153478)
		(= (dummy_3_value d3_1) 66.22910002873908)
		(= (dummy_3_value d3_2) 40.501176013265486)
		(= (dummy_3_value d3_3) 23.275321295830253)
		(= (dummy_3_value d3_4) 16.614500604379714)

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

