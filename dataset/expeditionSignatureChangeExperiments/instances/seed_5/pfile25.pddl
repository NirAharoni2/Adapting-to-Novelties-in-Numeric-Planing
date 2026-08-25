;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_25)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 13.640100920468457)

        (= (sled_supplies s0) 2.786125094737592)

        (= (factor_value f0) 0.850588364256901)
		(= (factor_value f1) 0.6338474307452783)

        (= (dummy_1_value d1_0) 0.9060380041795033)
		(= (dummy_1_value d1_1) 0.6912026538026735)
		(= (dummy_1_value d1_2) 0.5651222665655542)
		(= (dummy_1_value d1_3) 0.5329644393415922)
		(= (dummy_1_value d1_4) 0.5846813773264368)

        (= (dummy_2_value d2_0) 3.363328125174866)

        (= (dummy_3_value d3_0) 67.91376215218129)
		(= (dummy_3_value d3_1) 29.26659826464606)
		(= (dummy_3_value d3_2) 7.2888218514367065)
		(= (dummy_3_value d3_3) 76.61498744157703)

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

