;; Joan Espasa Arxer (jea20@st-andrews.ac.uk), based on the expedition domain by Ben Pathak (pathak.ban@gmail.com)
(define (problem instance_55)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
	)
  (:init

        (at s0 w0_0)

        (= (sled_capacity s0) 83.51232291488469)

        (= (sled_supplies s0) 1.073544324112884)

        (= (factor) 1.8572)
		(= (factor) 4.37611)
		(= (factor) 1.00185)
		(= (factor) 4.50906)
		(= (factor) 4.49572)
		(= (factor) 4.8955)
		(= (factor) 2.72092)
		(= (factor) 2.12979)
		(= (factor) 6.02238)
		(= (factor) 3.02688)

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