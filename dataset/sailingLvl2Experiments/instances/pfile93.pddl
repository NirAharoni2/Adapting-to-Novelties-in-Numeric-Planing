;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_93)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) -5.0)
		(= (y b0) -6.0)
		(= (x b1) -6.0)
		(= (y b1) -6.0)

		(= (d p0) -30.0)
		(= (d p1) -13.0)

        (= (dummy_1_d d1_0) -74.0)

        (= (dummy_2_d d2_0) -6.0)
		(= (dummy_2_d d2_1) 4.0)

        (= (dummy_3_d d3_0) -1455.0)
		(= (dummy_3_d d3_1) 406.0)
		(= (dummy_3_d d3_2) -1032.0)
		(= (dummy_3_d d3_3) 66.0)
		(= (dummy_3_d d3_4) -902.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

