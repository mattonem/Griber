"
A GribReaderTest is a test class for testing the behavior of GribReader
"
Class {
	#name : #GribReaderTest,
	#superclass : #TestCase,
	#category : #'Griber-Tests'
}

{ #category : #tests }
GribReaderTest >> testStartGriber [
	GribReader from: self testDataPath
]
