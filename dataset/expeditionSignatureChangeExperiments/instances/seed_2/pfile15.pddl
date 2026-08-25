;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_15)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 14.081451507917489)

        (= (sled_supplies s0) 2.8463375794307866)

        (= (factor_value f0) 0.6912778168068605)
		(= (factor_value f1) 0.9404684068070011)
		(= (factor_value f2) 0.9574849419728138)

        (= (dummy_1_value d1_0) 0.6564669775387227)

        (= (dummy_2_value d2_0) 5.712159562142106)
		(= (dummy_2_value d2_1) 9.160419016696427)

        (= (dummy_3_value d3_0) 47.164453158962864)
		(= (dummy_3_value d3_1) 18.559512278369965)
		(= (dummy_3_value d3_2) 10.348558907930567)
		(= (dummy_3_value d3_3) 40.889246682671654)
		(= (dummy_3_value d3_4) 22.436192722744483)

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

