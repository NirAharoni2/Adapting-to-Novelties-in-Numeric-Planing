;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_72)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.707410080260074)

        (= (sled_supplies s0) 6.136825545386398)

        (= (factor_value f0) 0.9376042099742363)
		(= (factor_value f1) 0.7742432905028779)
		(= (factor_value f2) 0.5403398763722875)
		(= (factor_value f3) 0.9455466485148833)
		(= (factor_value f4) 0.545531547314476)

        (= (dummy_1_value d1_0) 0.5428837582527404)
		(= (dummy_1_value d1_1) 0.9151635062109733)
		(= (dummy_1_value d1_2) 0.6402805562437792)
		(= (dummy_1_value d1_3) 0.8312005003272664)

        (= (dummy_2_value d2_0) 1.2575722500335411)
		(= (dummy_2_value d2_1) 2.8971491712678974)
		(= (dummy_2_value d2_2) 7.441134541946749)

        (= (dummy_3_value d3_0) 4.727942051023083)
		(= (dummy_3_value d3_1) 51.55114884700777)
		(= (dummy_3_value d3_2) 93.81205133064067)
		(= (dummy_3_value d3_3) 22.21744755133907)

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

