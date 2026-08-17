;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_10)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.715522662552134)

        (= (sled_supplies s0) 8.019133579112067)

        (= (factor_value f0) 0.7906705036059956)
		(= (factor_value f1) 0.960308164707522)
		(= (factor_value f2) 0.8316460579732627)
		(= (factor_value f3) 0.7399013763896524)
		(= (factor_value f4) 0.5097414423495892)

        (= (dummy_1_value d1_0) 0.980334974532762)

        (= (dummy_2_value d2_0) 2.0673188007965164)
		(= (dummy_2_value d2_1) 4.29834543620219)
		(= (dummy_2_value d2_2) 7.213552295056653)
		(= (dummy_2_value d2_3) 9.392026054486932)
		(= (dummy_2_value d2_4) 3.7744706360362166)

        (= (dummy_3_value d3_0) 87.56035363559242)
		(= (dummy_3_value d3_1) 41.81317540269364)
		(= (dummy_3_value d3_2) 11.396635176884484)
		(= (dummy_3_value d3_3) 20.640744084272953)
		(= (dummy_3_value d3_4) 77.75843166995497)

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

