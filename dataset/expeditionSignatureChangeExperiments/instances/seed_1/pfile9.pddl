;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_9)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 14.407409463430687)

        (= (sled_supplies s0) 0.6757157049736245)

        (= (factor_value f0) 5.776488759920856)
		(= (factor_value f1) 8.976000885562645)
		(= (factor_value f2) 5.954952190233577)
		(= (factor_value f3) 4.9742724294498535)
		(= (factor_value f4) 9.385743627644922)

        (= (dummy_1_value d1_0) 0.6950302693846548)
		(= (dummy_1_value d1_1) 0.7520536836229261)
		(= (dummy_1_value d1_2) 0.5086000983616175)
		(= (dummy_1_value d1_3) 0.8060641805515494)
		(= (dummy_1_value d1_4) 0.7011623565095598)

        (= (dummy_2_value d2_0) 3.5321654391500115)

        (= (dummy_3_value d3_0) 16.53956415418124)
		(= (dummy_3_value d3_1) 85.8961375612492)
		(= (dummy_3_value d3_2) 81.30276713310124)
		(= (dummy_3_value d3_3) 56.770713027472326)

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

