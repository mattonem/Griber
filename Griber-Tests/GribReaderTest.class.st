"
A GribReaderTest is a test class for testing the behavior of GribReader
"
Class {
	#name : #GribReaderTest,
	#superclass : #TestCase,
	#classVars : [
		'GRIB2Sample'
	],
	#category : #'Griber-Tests'
}

{ #category : #'test D' }
GribReaderTest class >> dataTestStream [
	^ GRIB2Sample ifNil: [GRIB2Sample := (ZnEasy get: 'https://github.com/mattonem/Griber/blob/master/test-data/agl_temperature_00.grib2?raw=true') contents readStream]
]

{ #category : #'test data' }
GribReaderTest >> dataTestStream [
	^ self class dataTestStream 
]

{ #category : #tests }
GribReaderTest >> testStartGriber [
	GribReader on: self dataTestStream
]
