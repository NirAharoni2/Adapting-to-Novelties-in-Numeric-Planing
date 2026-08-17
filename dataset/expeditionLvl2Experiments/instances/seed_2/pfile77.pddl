;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_77)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.10167335108517)

        (= (sled_supplies s0) 5.637084471024404)

        (= (factor_value f0) 0.573615023227931)
		(= (factor_value f1) 0.7780967252097093)
		(= (factor_value f2) 0.6175872081088152)
		(= (factor_value f3) 0.6107002878295293)
		(= (factor_value f4) 0.8827354923241839)

        (= (dummy_1_value d1_0) 0.8540694543491267)
		(= (dummy_1_value d1_1) 0.6441738014596341)
		(= (dummy_1_value d1_2) 0.8433181580528233)

        (= (dummy_2_value d2_0) 6.94360311354465)
		(= (dummy_2_value d2_1) 4.931882280879537)
		(= (dummy_2_value d2_2) 6.939673786252146)
		(= (dummy_2_value d2_3) 5.1312887966428855)
		(= (dummy_2_value d2_4) 2.2642877149108664)

        (= (dummy_3_value d3_0) 31.571876331173687)
		(= (dummy_3_value d3_1) 52.3408572849631)
		(= (dummy_3_value d3_2) 58.75881842016093)
		(= (dummy_3_value d3_3) 92.99811654330877)
		(= (dummy_3_value d3_4) 94.13079793355546)

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

