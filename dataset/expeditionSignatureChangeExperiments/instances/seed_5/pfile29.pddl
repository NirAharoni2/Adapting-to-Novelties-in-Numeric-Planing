;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_29)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 10.111087535219054)

        (= (sled_supplies s0) 0.30565837534958507)

        (= (factor_value f0) 0.8389647119754899)
		(= (factor_value f1) 0.805120592236807)
		(= (factor_value f2) 0.7567957169668256)
		(= (factor_value f3) 0.7505929599557166)

        (= (dummy_1_value d1_0) 0.77282750496025)

        (= (dummy_2_value d2_0) 7.215494175195262)

        (= (dummy_3_value d3_0) 45.52522847247385)
		(= (dummy_3_value d3_1) 78.97383261276255)
		(= (dummy_3_value d3_2) 58.3587067981433)
		(= (dummy_3_value d3_3) 93.54155589333051)
		(= (dummy_3_value d3_4) 56.18895602485093)

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

