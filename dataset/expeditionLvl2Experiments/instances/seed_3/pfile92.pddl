;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_92)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.962885300199639)

        (= (sled_supplies s0) 0.5538099808224802)

        (= (factor_value f0) 0.8757560402258218)
		(= (factor_value f1) 0.6022333740395189)
		(= (factor_value f2) 0.8567193028154929)

        (= (dummy_1_value d1_0) 0.9892451498613508)

        (= (dummy_2_value d2_0) 1.3230834671845837)
		(= (dummy_2_value d2_1) 3.26881468652539)
		(= (dummy_2_value d2_2) 9.871814080098458)

        (= (dummy_3_value d3_0) 9.16343850383811)
		(= (dummy_3_value d3_1) 81.96163526061837)
		(= (dummy_3_value d3_2) 58.51553951990253)

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

