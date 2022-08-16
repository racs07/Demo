%dw 2.0
output application/json
---
payload."items" map ((i,v) -> {
	
	studentId: i."id".s,
	(studentName: i."name".s) if(i."sk".s contains("student#")),
	(subjects:{
		subject: i."subject".s,
		subjectCode: i."sk".s
	}) if (i."sk".s contains("subject#"))
}) reduce($++$$)