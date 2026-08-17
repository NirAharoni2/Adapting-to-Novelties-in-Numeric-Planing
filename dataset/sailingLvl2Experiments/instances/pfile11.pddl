;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_11)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) 7.0)
		(= (y b0) -4.0)
		(= (x b1) -2.0)
		(= (y b1) 10.0)

		(= (d p0) -24.0)
		(= (d p1) 100.0)

        (= (dummy_1_d d1_0) 20.0)

        (= (dummy_2_d d2_0) 11.0)
		(= (dummy_2_d d2_1) -9.0)
		(= (dummy_2_d d2_2) 11.0)
		(= (dummy_2_d d2_3) 13.0)

        (= (dummy_3_d d3_0) 863.0)
		(= (dummy_3_d d3_1) -1377.0)
		(= (dummy_3_d d3_2) -804.0)
		(= (dummy_3_d d3_3) 1363.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

